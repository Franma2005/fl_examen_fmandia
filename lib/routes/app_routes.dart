import 'package:fl_examen_fmandia/entities/entities.dart';
import 'package:fl_examen_fmandia/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static AppRoutes instance = AppRoutes._privateConstructor();
  final String initialRoute = '/homescreen';
  static IconData iconGeneral = Icons.arrow_back;

  List<AppMenu> listaMenu = [
    AppMenu(
      name: 'Home Screen',
      route: '/homescreen',
      icon: Icon(iconGeneral), 
      screen: const HomeScreen(),
    ),
    AppMenu(
      name: 'ListView Screen',
      route: '/listviewscreen',
      icon: Icon(iconGeneral), 
      screen: const ListViewScreen(),
    ),
    AppMenu(
      name: 'Remember Screen',
      route: '/rememberscreen',
      icon: Icon(iconGeneral), 
      screen: const RememberScreen(),
    ),
  ];

  List<AppMenu> listViewMenu = [
    AppMenu(
      name: 'Reserva Screen',
      route: '/reservascreen',
      icon: Icon(iconGeneral), 
      screen: const ReservaScreen(),
    ),
    AppMenu(
      name: 'Viajes Screen',
      route: '/viajescreen',
      icon: Icon(iconGeneral), 
      screen: const ViajesScreen(),
    ),
    AppMenu(
      name: 'Alerta Screen',
      route: '/alertascreen',
      icon: Icon(iconGeneral), 
      screen: const AlertScreen(),
    ),
    AppMenu(
      name: ' Screen',
      route: '/alertscreen',
      icon: Icon(iconGeneral), 
      screen: const AlertScreen(),
    ),
  ];

  AppRoutes._privateConstructor();

  factory AppRoutes() {
    return instance;
  }

  Map<String, Widget Function(BuildContext)> createRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for(final option in listaMenu) {
      routes.addAll({option.route: (BuildContext context) => option.screen});
    }

    for(final option in listViewMenu) {
      routes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return routes;
  }


}