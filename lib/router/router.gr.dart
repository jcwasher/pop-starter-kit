// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:pop_starter_kit/navigators/home_navigator.dart' as _i1;
import 'package:pop_starter_kit/views/home_view.dart' as _i2;
import 'package:pop_starter_kit/views/meal_planner/cat_meal_planner_view.dart'
    as _i7;
import 'package:pop_starter_kit/views/meal_planner/cat_onboarding_view.dart'
    as _i6;
import 'package:pop_starter_kit/views/meal_planner/dog_meal_planner_view.dart'
    as _i4;
import 'package:pop_starter_kit/views/meal_planner/dog_non_transitioning_view.dart'
    as _i10;
import 'package:pop_starter_kit/views/meal_planner/dog_onboarding_view.dart'
    as _i5;
import 'package:pop_starter_kit/views/meal_planner/dog_transitioning_view.dart'
    as _i9;
import 'package:pop_starter_kit/views/meal_planner/onboarding/about_page.dart'
    as _i8;
import 'package:pop_starter_kit/views/meal_planner/shared/recipe_view.dart'
    as _i11;
import 'package:pop_starter_kit/views/sign_in_view.dart' as _i3;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    HomeNavigator.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeNavigator(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HomeView(key: args.key),
      );
    },
    SignInRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SignInView(),
      );
    },
    DogMealPlannerRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DogMealPlannerView(),
      );
    },
    DogOnboardingRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DogOnboardingView(),
      );
    },
    CatOnboardingRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.CatOnboardingView(),
      );
    },
    CatMealPlannerRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.CatMealPlannerView(),
      );
    },
    MealPlannerAboutPage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MealPlannerAboutPage(),
      );
    },
    DogTransitioningRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.DogTransitioningView(),
      );
    },
    DogNonTransitioningRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.DogNonTransitioningView(),
      );
    },
    RecipeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.RecipeView(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeNavigator]
class HomeNavigator extends _i12.PageRouteInfo<void> {
  const HomeNavigator({List<_i12.PageRouteInfo>? children})
      : super(
          HomeNavigator.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavigator';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeView]
class HomeRoute extends _i12.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<HomeRouteArgs> page =
      _i12.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SignInView]
class SignInRoute extends _i12.PageRouteInfo<void> {
  const SignInRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DogMealPlannerView]
class DogMealPlannerRoute extends _i12.PageRouteInfo<void> {
  const DogMealPlannerRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DogMealPlannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'DogMealPlannerRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DogOnboardingView]
class DogOnboardingRoute extends _i12.PageRouteInfo<void> {
  const DogOnboardingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DogOnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'DogOnboardingRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.CatOnboardingView]
class CatOnboardingRoute extends _i12.PageRouteInfo<void> {
  const CatOnboardingRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CatOnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatOnboardingRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.CatMealPlannerView]
class CatMealPlannerRoute extends _i12.PageRouteInfo<void> {
  const CatMealPlannerRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CatMealPlannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'CatMealPlannerRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.MealPlannerAboutPage]
class MealPlannerAboutPage extends _i12.PageRouteInfo<void> {
  const MealPlannerAboutPage({List<_i12.PageRouteInfo>? children})
      : super(
          MealPlannerAboutPage.name,
          initialChildren: children,
        );

  static const String name = 'MealPlannerAboutPage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.DogTransitioningView]
class DogTransitioningRoute extends _i12.PageRouteInfo<void> {
  const DogTransitioningRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DogTransitioningRoute.name,
          initialChildren: children,
        );

  static const String name = 'DogTransitioningRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.DogNonTransitioningView]
class DogNonTransitioningRoute extends _i12.PageRouteInfo<void> {
  const DogNonTransitioningRoute({List<_i12.PageRouteInfo>? children})
      : super(
          DogNonTransitioningRoute.name,
          initialChildren: children,
        );

  static const String name = 'DogNonTransitioningRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.RecipeView]
class RecipeRoute extends _i12.PageRouteInfo<void> {
  const RecipeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          RecipeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecipeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
