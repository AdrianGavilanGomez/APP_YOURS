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
  bool showPassword = false;

  TextEditingController _nameTextController = TextEditingController();
  TextEditingController _surnameTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  TextField reusableTextField(String text, IconData icon, bool isPasswordType, TextEditingController controller) {
    return TextField(
      controller: controller,
      obscureText: isPasswordType && !showPassword,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.black,
      style: TextStyle(color: Colors.black.withOpacity(0.9)),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.black,
        ),
        suffixIcon: isPasswordType
            ? GestureDetector(
          onTapDown: (_) {
            setState(() {
              showPassword = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              showPassword = false;
            });
          },
          onTapCancel: () {
            setState(() {
              showPassword = false;
            });
          },
          child: Icon(
            showPassword ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
        )
            : null,
        labelText: text,
        labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.grey.withOpacity(0.5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none),
        ),
      ),
      keyboardType: isPasswordType ? TextInputType.visiblePassword : TextInputType.emailAddress,
    );
  }

  void showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(
            message,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'OK',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(146, 43, 62, 1)),
              ),
            ),
          ],
        );
      },
    );
  }

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
              reusableTextField("Nombre", Icons.person, false, _nameTextController),
              const SizedBox(height: 10),
              reusableTextField("Apellido", Icons.person, false, _surnameTextController),
              const SizedBox(height: 10),
              reusableTextField("Nombre de usuario", Icons.person, false, _userNameTextController),
              const SizedBox(height: 10),
              reusableTextField("Correo electrónico", Icons.email, false, _emailTextController),
              const SizedBox(height: 10),
              reusableTextField("Contraseña", Icons.lock, true, _passwordTextController),
              const SizedBox(height: 20),
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
                  showErrorDialog('CORREO ELECTRÓNICO / CONTRASEÑA INCORRECTA');
                });
              }),
              const SizedBox(height: 10),
              const Text(
                '¿YA TIENES CUENTA?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(height: 10),
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
      ),
    );
  }
}