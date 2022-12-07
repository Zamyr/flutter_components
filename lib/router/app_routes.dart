import 'package:flutter/material.dart';
import 'package:flutter_components/models/menu_option.dart';

import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'Home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'Home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'Listview1',
        name: 'Listview Tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'Listview2',
        name: 'Listview Tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'Alert',
        name: 'Alert',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOption(
        route: 'Card',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.calendar_view_month_sharp),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  // 'Home': (BuildContext context) => const HomeScreen(),
  // 'Listview1': (BuildContext context) => const Listview1Screen(),
  // 'Listview2': (BuildContext context) => const Listview2Screen(),
  // 'Alert': (BuildContext context) => const AlertScreen(),
  // 'Card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
