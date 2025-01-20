import 'package:flutter/material.dart';

class ReservaScreen extends StatelessWidget {
   
  const ReservaScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservar Viaje'),
        actions: const[
          Icon(Icons.menu)
        ],
      ),
      body: Center(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
            children: [
              const CircleAvatar(
                radius: 100,
                child: Image(
                  image: NetworkImage('https://cdn-icons-png.flaticon.com/512/3534/3534284.png')
                ),
              ),
              const Text('No tienes reservas', style: TextStyle(fontSize: 32)),
              const SizedBox(height: 10,),
              const Text('¿Tienes un número de referencia? Añade tu numero de referencia ahora'),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () {}, child: Text('Añadir Reserva'))
            ],
           ),
         )
      ),
    );
  }
}