import 'package:flutter/material.dart';

class CustomCardFmd extends StatelessWidget {
   
  final String urlImage;

  const CustomCardFmd({Key? key, required this.urlImage}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(
            image: NetworkImage(urlImage)
          )
        ],
      ),
    );
  }
}