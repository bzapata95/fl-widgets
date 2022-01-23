import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    // MenuOptions(
    //     route: 'home',
    //     icon: Icons.home_max_sharp,
    //     name: 'HomeScreen',
    //     screen: const HomeScreen()),
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
        icon: Icons.card_membership_outlined,
        name: 'Tarjetas - Cards',
        screen: const CardScreen()),
    MenuOptions(
        route: 'avatar',
        icon: Icons.supervised_user_circle_outlined,
        name: 'Circle avatar',
        screen: const AvatarScreen()),
    MenuOptions(
        route: 'animated',
        icon: Icons.play_arrow_sharp,
        name: 'Animated Container',
        screen: const AnimatedScreen()),
    MenuOptions(
        route: 'inputs',
        icon: Icons.input_rounded,
        name: 'Text inputs',
        screen: const InputsScreen()),
    MenuOptions(
        route: 'slider',
        icon: Icons.slideshow_rounded,
        name: 'Slider and checks',
        screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const Listview1Screen());
  }
}
