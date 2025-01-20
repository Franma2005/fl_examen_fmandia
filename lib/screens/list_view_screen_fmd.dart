import 'package:fl_examen_fmandia/routes/app_routes.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
   
  const ListViewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final AppRoutes appRoutes = AppRoutes();

    return Scaffold(
      appBar: AppBar(
        actions: const [
          CircleAvatar(
            child: Icon(Icons.person),
          )
        ],
      ),
      body: SizedBox.expand(
  child: Column(
    children: [
      Container(
        child: const Column(
          children: [
            Text('Francisco Manuel de Céspedes Díaz'),
            ElevatedButton(
              onPressed: null,
              child: Text('Cerrar sesión'),
            ),
          ],
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => ListTile(
            trailing: appRoutes.listViewMenu[index].icon,
            title: Text(appRoutes.listViewMenu[index].name),
            onTap: () => Navigator.pushNamed(
              context, 
              (appRoutes.listViewMenu[index].route),
            ),
          ),
          itemCount: appRoutes.listViewMenu.length,
        ),
      ),
      const Expanded(
        child: SizedBox.expand(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.home),
                Icon(Icons.travel_explore_rounded),
                Icon(Icons.book_online),
                Icon(Icons.tag_rounded),
                Icon(Icons.track_changes)
              ],
            ),
          ),
        )
      )
    ],
  ),
)


    );
  }
}