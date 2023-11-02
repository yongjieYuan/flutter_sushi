import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nav {
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  static NavigatorState? get _navState => navKey.currentState;

  static Future<T?>? push<T extends Object?>(Widget builder) {
    assert(_navState != null, "cannot get navigator context");
    return _navState?.push(MaterialPageRoute(builder:(context) => builder));
    // return Navigator.of(_context!).push<T>(MaterialPageRoute(builder: (context) => builder));
  }
}