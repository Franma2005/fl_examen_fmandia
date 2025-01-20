import 'package:fl_examen_fmandia/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ViajesScreen extends StatelessWidget {
   
  const ViajesScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          height: 20,
          image: NetworkImage(
            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/EasyJet_logo.svg/2560px-EasyJet_logo.svg.png'
            ),
        ),
        actions: const[
          Icon(Icons.menu)
        ],
      ),
      body: const Center(
         child: Column(
          children: [
            Row(
              children: [
                CustomCardFmd(),
                CustomCardFmd()
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                CustomCardFmd(),
                CustomCardFmd()
              ],
            )
          ],
         ),
      ),
    );
  }
}