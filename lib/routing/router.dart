import 'package:flutter/cupertino.dart';
import 'package:mypersonal3dcv/cvType2.dart';
import 'package:mypersonal3dcv/routing/routes.dart';

import 'package:mypersonal3dcv/string_extensions.dart';

import '../cvType1.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var routingData = settings.name.getRoutingData;
  switch (routingData.route) {
    case ProgramerCVRoute:
      return _getPageRoute(CVType1(), settings);
    case DesignerCVRoute:
      return _getPageRoute(CVType2(), settings);
    default:
      return _getPageRoute(CVType1(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
