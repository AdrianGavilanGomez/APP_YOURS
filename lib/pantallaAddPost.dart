import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';

class PantallaAddPost extends StatefulWidget {
  const PantallaAddPost({Key? key}) : super(key: key);

  @override
  _PantallaAddPostState createState() => _PantallaAddPostState();
}

class _PantallaAddPostState extends State<PantallaAddPost> {
  bool _obscureText = true;
  final TextEditingController _searchController = TextEditingController();
  GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: 'AIzaSyDM9fpwj_tY6-YOSv4dGVIBeI1DATp8WWk');
  List<PlacesSearchResult> _searchResults = [];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void onSearchTextChanged(String value) async {
    if (value.isNotEmpty) {
      final response = await _places.autocomplete(value);
      if (response.isOkay) {
        setState(() {
          _searchResults = response.results;
        });
      }
    } else {
      setState(() {
        _searchResults = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            maxLines: 4,
                            textAlign: TextAlign.left,
                            textAlignVertical: TextAlignVertical.top,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                              hintText: ' Cuenta a otros viajeros tu experiencia',
                              border: OutlineInputBorder(),
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
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  controller: _searchController,
                  onChanged: onSearchTextChanged,
                  decoration: InputDecoration(
                    hintText: 'Buscar dirección',
                  ),
                ),
              ),

              if (_searchResults.isNotEmpty) ...[
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Card(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _searchResults.length,
                      itemBuilder: (context, index) {
                        final result = _searchResults[index];
                        return ListTile(
                          title: Text(result.description),
                          onTap: () {
                            // Lógica para manejar el resultado seleccionado
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],

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
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // accion del buton
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaLogin()),
                  );
                },
                child: const Text('PUBLICAR'),
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