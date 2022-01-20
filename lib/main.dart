import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/routes/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const colorPrimary = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        // home: const Listview1Screen(),
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppTheme.lightTheme);
  }
}
