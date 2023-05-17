import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:flutter/material.dart';

class PantallaAddPost extends StatefulWidget {
  const PantallaAddPost({Key? key}) : super(key: key);

  @override
  _PantallaAddPostState createState() => _PantallaAddPostState();
}

class _PantallaAddPostState extends State<PantallaAddPost> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            Image.asset(
              'assets/images/letras_yourss.png',
            ),
            const SizedBox(height: 10),
            const Text(
              'SUBIR PUBLICACIÓN',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              '¡QUE TODO EL MUNDO SE ENTERE!',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Ivan Gallego',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el buton
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaLogin()),
                );
              },
              child: const Text('CERRAR SESIÓN'),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Divider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}