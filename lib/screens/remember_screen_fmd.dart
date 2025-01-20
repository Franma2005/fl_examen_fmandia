import 'package:fl_examen_fmandia/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RememberScreen extends StatelessWidget {
   
  const RememberScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final Map<String, String> imprimir = {
      'name': 'paco'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Restablecer contraseña'),
      ),
      body: Column(
        children: [
          const Card(
            child: Text('Veniam sint elit reprehenderit mollit ipsum exercitation eiusmod elit incididunt. Eiusmod do aute laboris consequat tempor labore non pariatur ullamco ullamco mollit ullamco. Ea amet enim sint Lorem mollit dolor cupidatat aliquip reprehenderit cillum tempor. Reprehenderit Lorem mollit irure enim ex et pariatur elit esse ullamco ipsum. Sint esse dolore sunt est laborum nulla dolore excepteur. Excepteur laborum anim ut non Lorem id est Lorem duis esse sint sunt proident qui. Labore deserunt ullamco proident dolore nostrud id ullamco excepteur esse.'),
          ),
          const SizedBox(height: 40),
          Form(
            child: Column(
              children: [
                Customtextformfield(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Dirección de email',
                  imprimir: imprimir,
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    print(imprimir);
                  },
                  child: const Text('Restablecer contraseña')
                )
              ],
            )
          ),
        ],
      )
    );
  }
}