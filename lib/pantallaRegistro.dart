import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:flutter/material.dart';

class PantallaRegistro extends StatefulWidget {
  const PantallaRegistro({Key? key}) : super(key: key);

  @override
  _PantallaRegistroState createState() => _PantallaRegistroState();
}

class _PantallaRegistroState extends State<PantallaRegistro> {
  bool _obscureText = true;

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
                const SizedBox(height: 60),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Apellidos',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre de usuario',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Fecha de nacimiento',
                    prefixIcon: Icon(Icons.date_range),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Correo electrónico',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                TextField(
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
                ),
                const SizedBox(height: 40), //agregar 20pix de espac
                ElevatedButton(
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
                ),
                const SizedBox(height: 40), //agregamos distancia de 80pix
                const Text(
                  '¿YA TIENES CUENTA?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
                const SizedBox(height: 10), //agregamos distancia de 10pix
                ElevatedButton(
                  onPressed: () {
                    //accion del boton
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaLogin()),
                    );
                  },
                  child: const Text('INICIAR SESIÓN'),
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 25,
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