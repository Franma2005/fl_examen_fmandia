import 'package:fl_examen_fmandia/routes/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final AppRoutes appRoutes = AppRoutes(); 
  
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: appRoutes.initialRoute,
      routes: appRoutes.createRoutes(),
    );
  }
}