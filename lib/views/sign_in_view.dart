import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pop_starter_kit/dependencies.dart';
import 'package:pop_starter_kit/router/router.gr.dart';
import 'package:pop_starter_kit/theme/spacing.dart';

@RoutePage()
class SignInView extends HookWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final username = useState('');
    final password = useState('');
    final authenticated = useValueListenable(authController.authenticated);
    if (authenticated) context.router.replace(HomeRoute());

    return Scaffold(
      body: Center(
        child: Card(
          child: Container(
            width: min(400, MediaQuery.of(context).size.width - 50),
            padding: EdgeInsets.all(Spacing.paddingLarge),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
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
                  onFieldSubmitted: (_) => authController.signInWithCredentials(
                    username: username.value,
                    password: password.value,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
                Spacing.verticalSpaceMedium,
                Container(
                  width: double.infinity,
                  child: ValueListenableBuilder(
                    valueListenable: authController.isLoading,
                    builder: (_, isLoading, __) {
                      final authenticating = isLoading || authenticated;
                      final canSubmit = !authenticating &&
                          username.value.isNotEmpty &&
                          password.value.isNotEmpty;

                      return FilledButton(
                        child: !authenticating
                            ? Text('Sign in')
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: Spacing.paddingMedium,
                                    height: Spacing.paddingMedium,
                                    child: CircularProgressIndicator(),
                                  ),
                                  Spacing.horizontalSpaceSmall,
                                  Text('Signing in...')
                                ],
                              ),
                        onPressed: !canSubmit
                            ? null
                            : () => authController.signInWithCredentials(
                                  username: username.value,
                                  password: password.value,
                                ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
