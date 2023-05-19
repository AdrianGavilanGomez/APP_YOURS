import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:flutter/material.dart';

class PantallaFeed extends StatefulWidget {
  const PantallaFeed({Key? key}) : super(key: key);

  @override
  _PantallaFeedState createState() => _PantallaFeedState();
}

class _PantallaFeedState extends State<PantallaFeed> {
  bool _obscureText = true;
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Feed'),
    Text('Buscar'),
    Text('Añadir'),
    Text('Configuraciones'),
    Text('Perfil'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
                'COMUNIDAD',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              Container(
                child: Image.asset('assets/images/logo_yourss.png'),
              ),
              Text(
                '@ivangallegofernandez',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 35),
              Container(
                child: const Text(
                  'El otro dia fui a Sagrada Familia. Ha sido una autentica maravilla y os la recomiendo, es una experiencia unica.',
                ),
              ),
              Container(
                child: Image.asset('assets/images/logo_yourss.png'),
              ),
              Text(
                '@adriangavilangomez',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 35),
              Container(
                child: const Text(
                  'El otro dia fui a Sagrada Familia. Ha sido una autentica maravilla y os la recomiendo, es una experiencia unica.',
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
