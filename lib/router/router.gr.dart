// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:pop_starter_kit/navigators/home_navigator.dart' as _i3;
import 'package:pop_starter_kit/views/home_view.dart' as _i1;
import 'package:pop_starter_kit/views/meal_planner/dog/about_page.dart' as _i5;
import 'package:pop_starter_kit/views/meal_planner/meal_planner_view.dart'
    as _i4;
import 'package:pop_starter_kit/views/sign_in_view.dart' as _i2;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomeView(key: args.key),
      );
    },
    SignInRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SignInView(),
      );
    },
    HomeNavigator.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeNavigator(),
      );
    },
    MealPlannerRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MealPlannerRouteArgs>(
          orElse: () =>
              MealPlannerRouteArgs(type: pathParams.getString('type')));
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.MealPlannerView(
          type: args.type,
          key: args.key,
        ),
      );
    },
    DogMealPlannerAboutPage.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DogMealPlannerAboutPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeRoute extends _i6.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<HomeRouteArgs> page =
      _i6.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SignInView]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeNavigator]
class HomeNavigator extends _i6.PageRouteInfo<void> {
  const HomeNavigator({List<_i6.PageRouteInfo>? children})
      : super(
          HomeNavigator.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigator';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MealPlannerView]
class MealPlannerRoute extends _i6.PageRouteInfo<MealPlannerRouteArgs> {
  MealPlannerRoute({
    required String type,
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          MealPlannerRoute.name,
          args: MealPlannerRouteArgs(
            type: type,
            key: key,
          ),
          rawPathParams: {'type': type},
          initialChildren: children,
        );

  static const String name = 'MealPlannerRoute';

  static const _i6.PageInfo<MealPlannerRouteArgs> page =
      _i6.PageInfo<MealPlannerRouteArgs>(name);
}

class MealPlannerRouteArgs {
  const MealPlannerRouteArgs({
    required this.type,
    this.key,
  });

  final String type;

  final _i7.Key? key;

  @override
  String toString() {
    return 'MealPlannerRouteArgs{type: $type, key: $key}';
  }
}

/// generated route for
/// [_i5.DogMealPlannerAboutPage]
class DogMealPlannerAboutPage extends _i6.PageRouteInfo<void> {
  const DogMealPlannerAboutPage({List<_i6.PageRouteInfo>? children})
      : super(
          DogMealPlannerAboutPage.name,
          initialChildren: children,
        );

  static const String name = 'DogMealPlannerAboutPage';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
