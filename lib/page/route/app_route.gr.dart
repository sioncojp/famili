// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../ui/widget/main_screen.dart' as _i1;
import '../album/main.dart' as _i3;
import '../home/main.dart' as _i2;
import '../setting/main.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    RouteHome.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PageHome());
    },
    RouteAlbum.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PageAlbum());
    },
    RouteSetting.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PageSetting());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MainScreen.name, path: '/', children: [
          _i5.RouteConfig(RouteHome.name,
              path: 'home', parent: MainScreen.name),
          _i5.RouteConfig(RouteAlbum.name,
              path: 'album', parent: MainScreen.name),
          _i5.RouteConfig(RouteSetting.name,
              path: 'setting', parent: MainScreen.name)
        ])
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i5.PageRouteInfo<void> {
  const MainScreen({List<_i5.PageRouteInfo>? children})
      : super(MainScreen.name, path: '/', initialChildren: children);

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i2.PageHome]
class RouteHome extends _i5.PageRouteInfo<void> {
  const RouteHome() : super(RouteHome.name, path: 'home');

  static const String name = 'RouteHome';
}

/// generated route for
/// [_i3.PageAlbum]
class RouteAlbum extends _i5.PageRouteInfo<void> {
  const RouteAlbum() : super(RouteAlbum.name, path: 'album');

  static const String name = 'RouteAlbum';
}

/// generated route for
/// [_i4.PageSetting]
class RouteSetting extends _i5.PageRouteInfo<void> {
  const RouteSetting() : super(RouteSetting.name, path: 'setting');

  static const String name = 'RouteSetting';
}
