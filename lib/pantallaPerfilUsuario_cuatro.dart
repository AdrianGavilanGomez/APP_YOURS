import 'package:app_yours/main.dart';
import 'package:app_yours/pantallaLogin.dart';
import 'package:flutter/material.dart';


class PantallaPerfilUsuario_cuatro extends StatefulWidget {
  const PantallaPerfilUsuario_cuatro({Key? key}) : super(key: key);

  @override
  _PantallaPerfilUsuario_cuatroState createState() => _PantallaPerfilUsuario_cuatroState();
}

class _PantallaPerfilUsuario_cuatroState extends State<PantallaPerfilUsuario_cuatro> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 240, 245, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            Image.asset(
              'assets/images/letras_yourss.png',
            ),
            const SizedBox(height: 10),
            const Text(
              '@jordibatlleferreres',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Seguidors',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '1980',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'assets/images/Jordi.png',
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Siguiendo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          '501',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
            const Text(
              'Jordi Batlle',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
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
                'CERRAR SESIÓN',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
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
            const SizedBox(height: 25),
            Container(
              width: 60, // Establece el ancho deseado
              height: 60, // Establece la altura deseada
              child: Transform.translate(
                offset: Offset(-5, 0), // Cambia los valores para mover la imagen
                  child: Image.asset(
                    'assets/images/Imagen_galeria.png',
                    fit: BoxFit.cover,
                  ),
              ),
            ),
            //const TextField(
              //decoration: InputDecoration(
                //prefixIcon: Padding(
                  //padding: EdgeInsets.only(left: 185.0),
                    //child: Icon
                      //(Icons.image),
                  //),
                //),
              //),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return Image.asset(
                  'assets/images/foto_Ivan${index+1}.png',
                  fit: BoxFit.cover,
                );
              },
            ),
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