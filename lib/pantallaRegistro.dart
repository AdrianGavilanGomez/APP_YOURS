import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaFeed.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:app_yours/reusable_widgets/reusable_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PantallaRegistro extends StatefulWidget {
  const PantallaRegistro({Key? key}) : super(key: key);

  @override
  _PantallaRegistroState createState() => _PantallaRegistroState();
}

class _PantallaRegistroState extends State<PantallaRegistro> {
  bool _obscureText = true;

  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _surnameTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();


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
                /*const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),*/
                reusableTextField("Nombre", Icons.person, false, _nameTextController),
                const SizedBox(
                  height: 10,
                ),
                /*const TextField(
                  decoration: InputDecoration(
                    labelText: 'Apellidos',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),*/
                reusableTextField("Apellido", Icons.person, false, _surnameTextController),
                const SizedBox(
                  height: 10,
                ),
                /*const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre de usuario',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),*/
                reusableTextField("Nombre de usuario", Icons.person, false, _userNameTextController),
                const SizedBox(
                  height: 10,
                ),
                /*const TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo electrónico',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),*/
                reusableTextField("Correo electrónico", Icons.email, false, _emailTextController),
                const SizedBox(
                  height: 10,
                ),
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
                reusableTextField("Contraseña", Icons.lock, true, _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "REGISTRARSE", () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                      .then((value) {
                    print("Created New Account");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PantallaFeed()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                /*ElevatedButton(
                  onPressed: () {
                    // accion del buton
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaLogin()),
                    );
                  },
                  child: const Text('REGISTRARSE'),
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),*/
                const SizedBox(height: 10), //agregamos distancia de 80pix
                const Text(
                  '¿YA TIENES CUENTA?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 10), //agregamos distancia de 10pix
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaLogin()),
                    );
                  },
                  child: const Text(
                    'INICIAR SESIÓN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
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
              ],
            ),
          ),
        )
    );
  }
}