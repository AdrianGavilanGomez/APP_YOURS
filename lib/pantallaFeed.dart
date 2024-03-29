import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaAddPost.dart';
import 'package:app_yours/pantallaBuscador.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:app_yours/pantallaPerfil.dart';
import 'package:app_yours/pantallaPerfilUsuario.dart';
import 'package:app_yours/pantallaPerfilUsuario_cinco.dart';
import 'package:app_yours/pantallaPerfilUsuario_cuatro.dart';
import 'package:app_yours/pantallaPerfilUsuario_dos.dart';
import 'package:app_yours/pantallaPerfilUsuario_seis.dart';
import 'package:app_yours/pantallaPerfilUsuario_tres.dart';
import 'package:app_yours/pantallaPublicacionUsuario.dart';
import 'package:app_yours/pantallaPublicacionUsuario_cinco.dart';
import 'package:app_yours/pantallaPublicacionUsuario_cuatro.dart';
import 'package:app_yours/pantallaPublicacionUsuario_dos.dart';
import 'package:app_yours/pantallaPublicacionUsuario_seis.dart';
import 'package:app_yours/pantallaPublicacionUsuario_tres.dart';
import 'package:app_yours/pantallaPublicacionUsuario.dart';
import 'package:app_yours/pantallaRegistro.dart';
import 'package:app_yours/pantallaSettings.dart';
import 'package:flutter/material.dart';

class PantallaFeed extends StatefulWidget {
  const PantallaFeed({Key? key}) : super(key: key);

  @override
  _PantallaFeedState createState() => _PantallaFeedState();
}

class _PantallaFeedState extends State<PantallaFeed> {
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
          MaterialPageRoute(builder: (context) => PantallaBuscador()),
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
          MaterialPageRoute(builder: (context) => PantallaSettings()),
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
                'COMUNIDAD',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPublicacionUsuario()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/images/sagrada_familiaa.png'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPerfil()),
                  );
                },
                child: Container(
                  width: 70,
                  height: 70,
                  child: Transform.translate(
                    offset: Offset(-125, -220),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/Ivan.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-80, -50), // Cambia el valor vertical para mover el texto hacia arriba
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaPerfil()),
                    );
                  },
                  child: Text(
                    '@ivangallegofernandez',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(10, -30),
                child: const Text(
                  'El otro dia fui a Sagrada Familia. Ha sido una autentica maravilla y os la recomiendo, es una experiencia unica.',
                ),
              ),
              const SizedBox(height: 45),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPublicacionUsuario_dos()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/images/pedreraa.png'),
                ),
              ),
              Container(
                width: 70, // Establece el ancho deseado
                height: 70, // Establece la altura deseada
                child: Transform.translate(
                  offset: Offset(-120, -225), // Cambia los valores para mover la imagen
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Adri.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-80, -55), // Cambia el valor vertical para mover el texto hacia arriba
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaPerfilUsuario_dos()),
                    );
                  },
                  child: Text(
                    '@adriangavilangomez',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(10, -30),
                child: const Text(
                  'El otro día fui a la Pedrera. Había un poco de cola pero ha valido la espera, es un lugar muy bonito tanto por fuera como por dentro,lo recomiendo mucho.',
                ),
              ),
              const SizedBox(height:50),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPublicacionUsuario_tres()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/images/maremagnum.png'),
                ),
              ),
              Container(
                width: 70, // Establece el ancho deseado
                height: 70, // Establece la altura deseada
                child: Transform.translate(
                  offset: Offset(-120, -220), // Cambia los valores para mover la imagen
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaPerfilUsuario_tres()),
                    );
                  },
                  child: Text(
                    '@angelromerosanchez',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(7, -30),
                child: const Text(
                  'El otro dia fui al Maremagnum.Se vive un ambiente muy refrescante con muchas cosas a hacer y os la recomiendo, es un lugar muy bonito de visitar.',
                ),
              ),
              const SizedBox(height:50),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPublicacionUsuario_cuatro()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/images/Spotify_CampNou.png'),
                ),
              ),
              Container(
                width: 70, // Establece el ancho deseado
                height: 70, // Establece la altura deseada
                child: Transform.translate(
                  offset: Offset(-120, -220), // Cambia los valores para mover la imagen
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Jordi.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-85, -50), // Cambia el valor vertical para mover el texto hacia arriba
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
                offset: Offset(10, -30),
                child: const Text(
                  'Que partidazo jugó el Barça el otro dia en el       Spotify Camp Nou, como se notaba el apoyo de   los animadores.',
                ),
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPublicacionUsuario_cinco()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/images/Park_Guell.png'),
                ),
              ),
              Container(
                width: 70, // Establece el ancho deseado
                height: 70, // Establece la altura deseada
                child: Transform.translate(
                  offset: Offset(-120, -220), // Cambia los valores para mover la imagen
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
              Transform.translate(
                offset: Offset(10, -30),
                child: const Text(
                  'Que maravilla el Park Guell! Un sitio increiblemente precioso con mucho arte y estructuras.',
                ),
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPublicacionUsuario_seis()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/images/Las_ramblas.png'),
                ),
              ),
              Container(
                width: 70, // Establece el ancho deseado
                height: 70, // Establece la altura deseada
                child: Transform.translate(
                  offset: Offset(-120, -220), // Cambia los valores para mover la imagen
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Alejandro.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-65, -50), // Cambia el valor vertical para mover el texto hacia arriba
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaPerfilUsuario_seis()),
                    );
                  },
                  child: Text(
                    '@alejandrolegrahernandez',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
                Transform.translate(
                offset: Offset(-30, -30),
                child: const Text(
                  'Cuantas tiendas hay por las Ramblas!',
                  ),
                ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPublicacionUsuario()),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/images/sagrada_familiaa.png'),
                ),
              ),
              Container(
                width: 70, // Establece el ancho deseado
                height: 70, // Establece la altura deseada
                child: Transform.translate(
                  offset: Offset(-120, -220), // Cambia los valores para mover la imagen
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/Ivan.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-75, -50), // Cambia el valor vertical para mover el texto hacia arriba
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PantallaPerfil()),
                    );
                  },
                  child: Text(
                    '@ivangallegofernandez',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(15, -30),
                child: const Text(
                  'El otro dia fui a Sagrada Familia. Ha sido una autentica maravilla y os la recomiendo, es una experiencia unica.',
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex, // Establecer el índice actual
        onTap: _navigateToScreen, // Llamar a la función al hacer clic
        backgroundColor: Color.fromRGBO(146, 43, 62, 1), // Cambia el color aquí
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
