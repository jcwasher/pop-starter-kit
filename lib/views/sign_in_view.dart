import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/helpers.dart';
import 'package:pop_starter_kit/theme/spacing.dart';

@RoutePage()
class SignInView extends HookWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final username = useState('');
    final password = useState('');
    final state = useValueListenable(authController.state);

    final canSubmit = username.value.isNotEmpty && password.value.isNotEmpty;
    final signIn = () => authController.signInWithCredentials(
          username: username.value,
          password: password.value,
        );

    return Scaffold(
      body: Center(
        child: Container(
          width: min(400, MediaQuery.of(context).size.width - 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              state.maybeWhen(
                error: (message) => Padding(
                  padding: EdgeInsets.only(bottom: Spacing.paddingSmall),
                  child: Container(
                    color: Colors.red[200],
                    padding: EdgeInsets.all(Spacing.paddingTiny),
                    child: Html(
                      onAnchorTap: onAnchorTap,
                      style: {'a': Style(textDecoration: TextDecoration.none)},
                      data: message,
                    ),
                  ),
                ),
                orElse: () => SizedBox.shrink(),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(Spacing.paddingLarge),
                  child: Column(
                    children: [
                      Text(
                        'PoP Starter Kit',
                        textScaleFactor: 1.5,
                      ),
                      Spacing.verticalSpaceMedium,
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: [AutofillHints.email],
                        onChanged: (value) => username.value = value,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Email',
                        ),
                      ),
                      Spacing.verticalSpaceMedium,
                      TextFormField(
                        obscureText: true,
                        autofillHints: [AutofillHints.password],
                        onChanged: (value) => password.value = value,
                        onFieldSubmitted: (_) => canSubmit ? signIn : null,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                        ),
                      ),
                      Spacing.verticalSpaceMedium,
                      Container(
                        width: double.infinity,
                        child: FilledButton(
                          child: state.maybeWhen(
                            loading: (_) => Text('Signing in...'),
                            orElse: () => Text('Sign in'),
                          ),
                          onPressed: state.maybeWhen(
                            loading: (_) => null,
                            orElse: () => canSubmit ? signIn : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
