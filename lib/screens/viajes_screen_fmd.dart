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
                CustomCardFmd(
                  urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSATmxCMp213XTvs_YN64jf9i40b69FUZLV2Q&0',
                ),
                CustomCardFmd(
                  urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTUoTkEBVyLvb5ELGkw_EyJ2UcTHHa9AoMHw&s',
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                CustomCardFmd(
                  urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShXfpci3hOPku193OK3fhx3ws1r8PT7lbiEQ&s',
                ),
                CustomCardFmd(
                  urlImage: 'https://media.campsaround.com/mainweb/wp-content/uploads/2023/08/Camping-Guide-For-Beginners-Things-You-Must-Know-Before-You-Go-Camping.png',
                )
              ],
            )
          ],
         ),
      ),
    );
  }
}