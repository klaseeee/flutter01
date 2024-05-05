// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:flutter_01/presentations/dashboard/dashboard.dart' as _i1;
import 'package:flutter_01/presentations/home/home.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Dashboard.name: (routeData) {
      final args = routeData.argsAs<DashboardArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.Dashboard(
          key: args.key,
          title: args.title,
        ),
      );
    },
    Home.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Home(),
      );
    },
  };
}

/// generated route for
/// [_i1.Dashboard]
class Dashboard extends _i3.PageRouteInfo<DashboardArgs> {
  Dashboard({
    _i4.Key? key,
    required String title,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          Dashboard.name,
          args: DashboardArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i3.PageInfo<DashboardArgs> page =
      _i3.PageInfo<DashboardArgs>(name);
}

class DashboardArgs {
  const DashboardArgs({
    this.key,
    required this.title,
  });

  final _i4.Key? key;

  final String title;

  @override
  String toString() {
    return 'DashboardArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i2.Home]
class Home extends _i3.PageRouteInfo<void> {
  const Home({List<_i3.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
