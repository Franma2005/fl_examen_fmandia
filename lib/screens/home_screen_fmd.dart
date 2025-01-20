import 'package:fl_examen_fmandia/screens/screens.dart';
import 'package:fl_examen_fmandia/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/EasyJet_logo.svg/2560px-EasyJet_logo.svg.png'
              ),
              height: 50,
            ),
            const Text('Inicia sesión para añadir tus reservas automáticamente'),
            const SizedBox(height: 40,),
            Form(
              child: Column(
                children: [
                  const Customtextformfield(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    hintText: 'Email',
                    imprimir: {},
                  ),
                  const SizedBox(height: 40,),
                  const Customtextformfield(
                    obscureText: true,
                    hintText: 'Contraseña',
                    icon: Icon(Icons.password),
                    imprimir: {},
                  ),
                  const SizedBox(height: 40,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => const ListViewScreen()));
                    },
                    child: const Text('Iniciar sesión')
                  ),
                  const SizedBox(height: 40),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/rememberscreen');
                    },
                    child: const Text('¿Olvidaste tus datos?')
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}