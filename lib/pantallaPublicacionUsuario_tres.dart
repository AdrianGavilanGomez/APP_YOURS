import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaAddPost.dart';
import 'package:app_yours/pantallaFeed.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:app_yours/pantallaPerfil.dart';
import 'package:app_yours/pantallaPerfilUsuario.dart';
import 'package:app_yours/pantallaRegistro.dart';
import 'package:flutter/material.dart';

class PantallaPublicacionUsuario_tres extends StatefulWidget {
  const PantallaPublicacionUsuario_tres({Key? key}) : super(key: key);

  @override
  _PantallaPublicacionUsuario_tresState createState() => _PantallaPublicacionUsuario_tresState();
}

class _PantallaPublicacionUsuario_tresState extends State<PantallaPublicacionUsuario_tres> {
  bool _obscureText = true;

  int _currentIndex = 0; // Índice inicial del BottomNavigationBar

  void _navigateToScreen(int index) {
    // Actualizar el índice actual y navegar a la pantalla correspondiente
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
      // Navegar a la pantalla Home
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PantallaFeed()),
        );
        break;
      case 1:
      // Navegar a la pantalla Search
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PantallaLogin()),
        );
        break;
      case 2:
      // Navegar a la pantalla Add (pantalla actual)
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PantallaAddPost()),
        );
        break;
      case 3:
      // Navegar a la pantalla Settings
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PantallaRegistro()),
        );
        break;
      case 4:
      // Navegar a la pantalla Profile
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PantallaPerfil()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 80),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/images/letras_yourss.png'),
                width: 209,
                height: 36,
              ),
              const SizedBox(height: 20),
              const Text(
                'MAREMAGNUM',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                child: Image.asset('assets/images/maremagnum.png'),
              ),
              Container(
                width: 70, // Establece el ancho deseado
                height: 70, // Establece la altura deseada
                child: Transform.translate(
                  offset: Offset(-125, -210), // Cambia los valores para mover la imagen
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Angel.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-80, -50), // Cambia el valor vertical para mover el texto hacia arriba
                child: Text(
                  '@angelromerosanchez',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 0),
              Transform.translate(
                offset: Offset(5, -20),
                child: const Text(
                  'El otro dia fui al Maremagnum.Se vive un ambiente muy refrescante con muchas cosas a hacer y os la recomiendo, es un lugar muy bonito de visitar.',
                ),
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPerfilUsuario()),
                  );
                },
                child: Container(
                  width: 70,
                  height: 70,
                  child: Transform.translate(
                    offset: Offset(-125, -20),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Jordi.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-40, -70), // Cambia el valor vertical para mover el texto hacia arriba
                child: Text(
                  '@jordibatlle',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(10, -20),
                child: const Text(
                  'Se esta muy bien en esa zona. hay mucha cosa para hacer. ',
                ),
              ),
            ],
          ),
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex, // Establecer el índice actual
        onTap: _navigateToScreen, // Llamar a la función al hacer clic
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