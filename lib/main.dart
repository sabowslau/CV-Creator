import 'package:flutter/material.dart';

import 'package:mypersonal3dcv/locator.dart';

import 'package:mypersonal3dcv/routing/router.dart';
import 'package:mypersonal3dcv/routing/routes.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hoja de Vida Jhonatan Sabayé',
      navigatorKey: locator<NavigationService>().navigatorKey,
      initialRoute: ProgramerCVRoute,
      onGenerateRoute: generateRoute,
      builder: (context, child) => Container(
        child: child,
      ),
    );
  }
}
