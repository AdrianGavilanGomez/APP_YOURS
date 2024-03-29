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
      backgroundColor: Color.fromRGBO(255, 240, 245, 1),
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
                cursorColor: Color.fromRGBO(146, 43, 62, 1),
                decoration: InputDecoration(
                  labelText: 'Introduce tu dirección de correo electrónico',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color.fromRGBO(146, 43, 62, 1),
                  ),
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(146, 43, 62, 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(146, 43, 62, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaLogin()),
                  );
                },
                child: const Text(
                  'SIGUIENTE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(146, 43, 62, 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
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