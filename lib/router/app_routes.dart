import 'package:laboratorio06/models/menu_options.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home_filled,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list_alt_rounded,
        name: 'ListView Version 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt_rounded,
        name: 'ListView Version 2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'listview3',
        icon: Icons.list_alt_rounded,
        name: 'ListView Version 3',
        screen: const ListView3Screen()),
    
  ];

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'card': (BuildContext context) => const CardScreen(),
    'alert': (BuildContext context) => const AlertScreen()
  };*/

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> rutasnuevas = {};
    for (final opciones in menuOptions) {
      rutasnuevas
          .addAll({opciones.route: (BuildContext context) => opciones.screen});
    }
    return rutasnuevas;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ListView1Screen());
  }
}
