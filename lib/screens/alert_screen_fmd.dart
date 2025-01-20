import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Aviso'),
      actions: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Incididunt ullamco culpa officia duis ullamco quis. Est cupidatat aliquip in enim. Est eu non id cupidatat veniam tempor ut aute nisi consectetur reprehenderit non Lorem. Nostrud laborum culpa veniam ea aliqua velit excepteur cupidatat incididunt culpa commodo culpa ad officia.'),
            FlutterLogo(size: 100)
          ],
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Aceptar')
        )
      ],
    );
  }
}