import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaAddPost.dart';
import 'package:app_yours/pantallaFeed.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:app_yours/pantallaPerfil.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 90), //establecemos el padding horizontal
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Image.asset('assets/images/letras_yourss.png'),
              ),
              const SizedBox(height: 40),
              Image.asset('assets/images/candado.png'),
              const SizedBox(height: 40),
              const Text(
                '¿HAS OLVIDADO TU CONTRASEÑA?',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Introduce tu dirección de correo electrónico para poder reestablecer el acceso a tu cuenta',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 40), // Añade un espacio entre el Text y el TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Introduce tu dirección de correo electrónico',
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // accion del buton
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaLogin()),
                  );
                },
                child: const Text('SIGUIENTE'),
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 40), //agregar 20pix de espacio
              GestureDetector(
                onTap: () {
                  // Acción al presionar el texto
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaLogin()),
                  );
                },
                child: const Text(
                  'VOLVER AL INICIO DE SESIÓN',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}