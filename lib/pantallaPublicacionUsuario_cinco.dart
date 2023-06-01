import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaAddPost.dart';
import 'package:app_yours/pantallaFeed.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:app_yours/pantallaPerfil.dart';
import 'package:app_yours/pantallaPerfilUsuario.dart';
import 'package:app_yours/pantallaPerfilUsuario_cinco.dart';
import 'package:app_yours/pantallaPerfilUsuario_cuatro.dart';
import 'package:app_yours/pantallaRegistro.dart';
import 'package:flutter/material.dart';

class PantallaPublicacionUsuario_cinco extends StatefulWidget {
  const PantallaPublicacionUsuario_cinco({Key? key}) : super(key: key);

  @override
  _PantallaPublicacionUsuario_cincoState createState() => _PantallaPublicacionUsuario_cincoState();
}

class _PantallaPublicacionUsuario_cincoState extends State<PantallaPublicacionUsuario_cinco> {
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
      backgroundColor: Color.fromRGBO(255, 240, 245, 1),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                child: Image.asset('assets/images/letras_yourss.png'),
              ),
              const SizedBox(height: 10),
              const Text(
                'PARK GUELL',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/images/Park_Guell.png'),
              ),
              Container(
                width: 70, // Establece el ancho deseado
                height: 70, // Establece la altura deseada
                child: Transform.translate(
                  offset: Offset(-125, -210), // Cambia los valores para mover la imagen
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Amir.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-70, -50), // Cambia el valor vertical para mover el texto hacia arriba
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaPerfilUsuario()),
                    );
                  },
                  child: Text(
                    '@amirbelhedidabrowska',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 0),
              Transform.translate(
                offset: Offset(12, -20),
                child: const Text(
                  'Que maravilla el Park Guell! Un sitio increiblemente precioso con mucho arte y estructuras.',
                ),
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPerfilUsuario_cinco()),
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
                offset: Offset(-15, -65), // Cambia el valor vertical para mover el texto hacia arriba
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaPerfilUsuario_cuatro()),
                    );
                  },
                  child: Text(
                    '@jordibatlleferreres',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-75, -20),
                child: const Text(
                  'Hay unas vistas inreibles! ',
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