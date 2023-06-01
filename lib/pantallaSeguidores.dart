import 'dart:math';

import 'package:app_yours/pantallaAddPost.dart';
import 'package:app_yours/pantallaBuscador.dart';
import 'package:app_yours/pantallaFeed.dart';
import 'package:app_yours/pantallaPerfil.dart';
import 'package:app_yours/pantallaSettings.dart';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class PantallaSeguidores extends StatefulWidget {
  @override
  _PantallaSeguidoresState createState() => _PantallaSeguidoresState();
}

class UserImageIndex {
  final List<String> imageUrls;
  int currentIndex;

  UserImageIndex({required this.imageUrls}) : currentIndex = 0;

  String getCurrentImageUrl() {
    return imageUrls[currentIndex % imageUrls.length];
  }

  String getNextImageUrl() {
    currentIndex++;
    return getCurrentImageUrl();
  }
}

class _PantallaSeguidoresState extends State<PantallaSeguidores> {

  List<String> viajeros = [
    '@angelromerosanchez',
    '@ivangallegofernandez',
    '@adriangavilangomez',
    '@jordibatlleferreres',
    '@amirbelhedidabrowska',
    '@alejandrolegrahernandez',
    '@carlaperezortega',
    '@sergioriveracampos',
    '@lauragonzalezlopez',
    '@pablogutierrezruiz',
    '@lucasfernandezgarcia',
    '@sofiagonzalezmartinez',
    '@matiasrodriguezperez',
    '@lucianamartinezlopez',
    '@benjaminrodriguezgomez',
    '@valentinahernandezsanchez',
    '@santiagogarciamartinez',
    '@camilarodriguezfernandez',
    '@thiagoperezgomez',
    '@isabellagomezlopez',
    '@tomasmartinfernandez',
    '@martinarodriguezsanchez',
    '@nicolasfernandezperez',
    '@emiliamartinezgomez',
    '@franciscoperezlopez',
    '@anagarciafernandez',
    '@juanrodriguezsanchez',
    '@claragonzalezgomez',
    '@davidlopezmartinez',
    '@emiliafernandezperez',
  ];

  List<String> viajerosFiltrados = [];

  TextEditingController _searchController = TextEditingController();

  int _currentIndex = 0; // Índice inicial del BottomNavigationBar

  @override
  void initState() {
    super.initState();
    viajerosFiltrados.addAll(viajeros);
  }

  void _filtrarViajeros(String query) {
    setState(() {
      viajerosFiltrados = viajeros.where((viajero) {
        final nombreMinusculas = viajero.toLowerCase();
        final consultaMinusculas = query.toLowerCase();
        return nombreMinusculas.contains(consultaMinusculas);
      }).toList();
    });
  }

  Random random = Random();
  int generateRandomNumber() {
    return random.nextInt(1000);
  }

  String getRandomImage() {
    List<String> imageUrls = [
      'assets/images/Angel.png',
      'assets/images/Ivan.png',
      'assets/images/Adri.png',
      'assets/images/Jordi.png',
      'assets/images/Amir.png',
      'assets/images/Alejandro.png',
    ];

    int randomIndex = random.nextInt(imageUrls.length);
    return imageUrls[randomIndex];
  }

  void _mostrarInformacion(BuildContext context, String viajero) {
    String imagenUsuario = getRandomImage();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imagenUsuario),
                  radius: 40,
                ),
                SizedBox(height: 16),
                Text(
                  viajero,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Seguidores: ${generateRandomNumber()} - Seguidos: ${generateRandomNumber()}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // Acciones cuando se presiona el botón Añadir
                      },
                      icon: Icon(Icons.add),
                      label: Text('Eliminar'),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Color.fromRGBO(146, 43, 62, 1)), // Cambia el color de fondo del botón
                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Ver perfil',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PantallaPerfil()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Color.fromRGBO(146, 43, 62, 1)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text(
                        'Cerrar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PantallaSeguidores()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Color.fromRGBO(146, 43, 62, 1)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 0),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child: Image.asset('assets/images/letras_yourss.png'),
                ),
                const SizedBox(height: 10),
                const Text(
                  'SEGUIDORES',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  cursorColor: Color.fromRGBO(146, 43, 62, 1),
                  controller: _searchController,
                  onChanged: _filtrarViajeros,
                  decoration: InputDecoration(
                    labelText: 'Buscar viajeros',
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
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: viajerosFiltrados.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () =>
                      _mostrarInformacion(context, viajerosFiltrados[index]),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200], // Color de fondo gris muy claro
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(getRandomImage()),
                      ),
                      title: Text(
                        viajerosFiltrados[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Seguidores: ${generateRandomNumber()} - Seguidos: ${generateRandomNumber()}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
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