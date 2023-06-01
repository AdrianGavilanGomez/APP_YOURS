import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaAddPost.dart';
import 'package:app_yours/pantallaFeed.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:app_yours/pantallaPerfil.dart';
import 'package:app_yours/pantallaRegistro.dart';
import 'package:flutter/material.dart';

class PantallaSettings extends StatefulWidget {
  const PantallaSettings({Key? key}) : super(key: key);

  @override
  _PantallaSettingsState createState() => _PantallaSettingsState();
}

class _PantallaSettingsState extends State<PantallaSettings> {
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

  void _showPasswordResetPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Revisa tu bandeja de entrada'),
          content: const Text(
              'Te hemos enviado un enlace para reestablecer tu contraseña.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'GENIAL',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(146, 43, 62, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showEmailResetPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Revisa tu bandeja de entrada'),
          content: const Text(
              'Te hemos enviado un enlace para reestablecer tu correo electrónico.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'GENIAL',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(146, 43, 62, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showUsernameResetPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Revisa tu bandeja de entrada'),
          content: const Text(
              'Te hemos enviado un enlace para reestablecer tu nombre de usuario.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'GENIAL',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(146, 43, 62, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showCreditosCreadoresPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Créditos creadores YOURS'),
          content: const Text(
              'App desarrollada por @angelromerosanchez / @ivangallegofernandez / @adriangavilangomez'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'GENIAL',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(146, 43, 62, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  String? selectedLanguage;
  List<String> languages = [
    'Spanish',
    'Catalan',
    'English',
    'French',
    'German',
    'Italian',
    'Portuguese',
    'Dutch',
    'Swedish',
    'Norwegian',
    'Danish',
    'Finnish',
    'Russian',
    'Chinese',
    'Japanese',
  ];

  void addLanguage(String language) {
    setState(() {
      languages.add(language);
      selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
            crossAxisAlignment: CrossAxisAlignment.center, // Centra horizontalmente
            children: [
              Image.asset(
                'assets/images/letras_yourss.png',
              ),
              const SizedBox(height: 10),
              const Text(
                'AJUSTES',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          ListTile(
            title: const Text('Modo oscuro / Modo claro'),
            trailing: Switch(
              value: true, // Aquí debes manejar el estado del modo oscuro / claro
              onChanged: (value) {
                // Lógica para cambiar el estado del modo oscuro / claro
              },
              activeColor: Color.fromRGBO(146, 43, 62, 1), // Cambia el color aquí
            ),
          ),
          ListTile(
            title: const Text('Permitir notificaciones de la app'),
            trailing: Switch(
              value: true, // Aquí debes manejar el estado de las notificaciones
              onChanged: (value) {
                // Lógica para cambiar el estado de las notificaciones
              },
              activeColor: Color.fromRGBO(146, 43, 62, 1), // Cambia el color aquí
            ),
          ),
          ListTile(
            title: const Text('Cambiar nombre de usuario'),
            onTap: () {
              // Navegar a la pantalla de cambio de contraseña
              _showUsernameResetPopup();
            },
          ),
          ListTile(
            title: const Text('Cambiar correo electrónico'),
            onTap: () {
              // Navegar a la pantalla de cambio de correo electrónico
              _showEmailResetPopup();
            },
          ),
          ListTile(
            title: const Text('Cambiar contraseña'),
            onTap: () {
              // Navegar a la pantalla de cambio de contraseña
              _showPasswordResetPopup();
            },
          ),
          ListTile(
            title: const Text('Cambiar idioma de la app'),
            onTap: () {
              // Navegar a la pantalla de cambio de idioma
            },
          ),
          const SizedBox(height: 5),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 17),
            child: DropdownButton<String>(
              value: selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  selectedLanguage = newValue;
                });
              },
              items: languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            title: const Text('Créditos de los creadores de la app'),
            onTap: () {
              // Navegar a la pantalla de créditos
              _showCreditosCreadoresPopup();
            },
          ),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
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
        )
    );
  }
}