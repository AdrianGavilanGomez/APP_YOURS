import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaBuscador.dart';
import 'package:app_yours/pantallaFeed.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:app_yours/pantallaPerfil.dart';
import 'package:app_yours/pantallaRegistro.dart';
import 'package:app_yours/pantallaSettings.dart';
import 'package:flutter/material.dart';

class PantallaAddPost extends StatefulWidget {
  const PantallaAddPost({Key? key}) : super(key: key);

  @override
  _PantallaAddPostState createState() => _PantallaAddPostState();
}

class _PantallaAddPostState extends State<PantallaAddPost> {
  bool _obscureText = true;

  int _currentIndex = 0; // Índice inicial del BottomNavigationBar

  String? selectedAddress;
  List<String> addresses = [
    'Calle Roger de Llúria 97, 09009 Barcelona',
    'Calle Balmes 15, 08007 Barcelona',
    'Calle Aribau 88, 08036 Barcelona',
  ];

  void addAddress(String address) {
    setState(() {
      addresses.add(address);
      selectedAddress = address;
    });
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
            crossAxisAlignment: CrossAxisAlignment.center, // Centra horizontalmente
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
              Container(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '¡QUE TODO EL MUNDO SE ENTERE!',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            cursorColor: Color.fromRGBO(146, 43, 62, 1),
                            maxLines: 4,
                            textAlign: TextAlign.left,
                            textAlignVertical: TextAlignVertical.top,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                              hintText: ' Cuenta a otros viajeros tu experiencia',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(146, 43, 62, 1),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(146, 43, 62, 1),
                                ),
                              ),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      /*IconButton(
                        icon: Icon(Icons.camera_alt),
                        onPressed: () {
                          // Lógica para abrir la galeria aquí
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.image_search),
                        onPressed: () {
                          // Lógica para abrir la galeria aquí
                        },
                      ),*/
                      Image.asset(
                        'assets/images/camera.png',
                        width: 40,
                        height: 40,
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/gallery.png',
                        width: 40,
                        height: 40,
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/sagrada_familiaa.png',
                        width: 50,
                        height: 50,
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/maremagnum.png',
                        width: 50,
                        height: 50,
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/images/pedreraa.png',
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'UBICACIÓN',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          DropdownButton<String>(
                            value: selectedAddress,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedAddress = newValue;
                              });
                            },
                            items: addresses.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      String newAddress = '';

                                      return AlertDialog(
                                        title: const Text('Agregar dirección'),
                                        content: TextField(
                                          cursorColor: Color.fromRGBO(146, 43, 62, 1),
                                          onChanged: (value) {
                                            newAddress = value;
                                          },
                                          decoration: InputDecoration(
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color.fromRGBO(146, 43, 62, 1),
                                              ),
                                            ),
                                          ),
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              addAddress(newAddress);
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              'Agregar',
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
                                },
                                child: const Text(
                                  'AGREGAR DIRECCIÓN',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    const Text(
                      'VALORACIÓN',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 80),
                    IconButton(
                      onPressed: () {
                        // Logica aqui
                      },
                      icon: Icon(Icons.star),
                    ),
                    IconButton(
                      onPressed: () {
                        // Logica aqui
                      },
                      icon: Icon(Icons.star),
                    ),
                    IconButton(
                      onPressed: () {
                        // Logica aqui
                      },
                      icon: Icon(Icons.star),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaFeed()),
                  );
                },
                child: const Text(
                  'PUBLICAR',
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