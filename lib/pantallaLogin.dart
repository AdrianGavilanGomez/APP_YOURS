import 'package:app_yours/forgotPassword.dart';
import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaAddPost.dart';
import 'package:app_yours/pantallaFeed.dart';
import 'package:app_yours/pantallaPerfil.dart';
import 'package:app_yours/pantallaPerfilUsuario.dart';
import 'package:app_yours/pantallaPerfilUsuario_dos.dart';
import 'package:app_yours/pantallaPerfilUsuario_tres.dart';
import 'package:app_yours/pantallaPublicacionUsuario.dart';
import 'package:app_yours/pantallaRegistro.dart';
import 'package:app_yours/reusable_widgets/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PantallaLogin extends StatefulWidget {
  const PantallaLogin({Key? key}) : super(key: key);

  @override
  _PantallaLoginState createState() => _PantallaLoginState();
}

class _PantallaLoginState extends State<PantallaLogin> {
  bool _obscureText = true;

  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 100), //establecemos el padding horizontal
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
                const SizedBox(height: 90),
                reusableTextField("Correo electrónico", Icons.email, false, _emailTextController),
                const SizedBox(
                  height: 10,
                ),
                /*const TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo electrónico',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),*/
                reusableTextField("Contraseña", Icons.lock, true, _passwordTextController),
                const SizedBox(height: 20),
                /*TextField(
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                ),*/
                const SizedBox(height: 10), // Añade un espacio entre el Text y el TextField
                GestureDetector(
                  onTap: () {
                    // Acción al presionar el texto
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },
                  child: const Text(
                    '¿HAS OLVIDADO TU CONTRASEÑA?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                const SizedBox(height: 40), //agregar 20pix de espac
                /*ElevatedButton(
                  onPressed: () {
                    // accion del buton
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaFeed()),
                    );
                  },
                  child: const Text('INICIAR SESIÓN'),
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),*/
                firebaseUIButton(context, "INICIAR SESIÓN", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PantallaFeed()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                const SizedBox(height: 50), //agregamos distancia de 80pix
                const Text(
                  '¿NO ESTÁS REGISTRADO?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 10), //agregamos distancia de 10pix
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaRegistro()),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PantallaRegistro()),
                        );
                      },
                      child: const Text(
                        'REGISTRARSE',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFF8E10E)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
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