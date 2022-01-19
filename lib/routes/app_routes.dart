import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        icon: Icons.access_alarm_outlined,
        name: 'HomeScreen',
        screen: const HomeScreen()),
    MenuOptions(
        route: 'listview1',
        icon: Icons.list_alt_outlined,
        name: 'Listview 1',
        screen: const Listview1Screen()),
    MenuOptions(
        route: 'listview2',
        icon: Icons.list_alt_outlined,
        name: 'Listview 2',
        screen: const Listview2Screen()),
    MenuOptions(
        route: 'alert',
        icon: Icons.notifications_active,
        name: 'Alertas',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.notifications_active,
        name: 'Tarjetas - Cards',
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const Listview1Screen());
  }
}