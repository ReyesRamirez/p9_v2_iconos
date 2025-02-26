import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Reyes Ramirez'),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 19),
          centerTitle: true,
          backgroundColor: const Color(0xff573e87),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Reyes Ramirez Mat:22308051281289",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              // Primera fila
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildIconWithSubtitle(
                      Icons.description, 'Documento', Color(0xff0fff07)),
                  _buildIconWithSubtitle(
                      Icons.thumb_down, 'Disgusta', Color(0xffa5af4c)),
                  _buildIconWithSubtitle(
                      Icons.square, 'Cuadrado', Color(0xffb821f3)),
                ],
              ),
              const SizedBox(height: 20), // Espacio entre las filas
              // Segunda fila con 3 íconos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildIconWithSubtitle(
                      Icons.music_video, 'Musica', Color(0xff3936f4)),
                  _buildIconWithSubtitle(
                      Icons.circle, 'Circulo', Color(0xff2766b0)),
                  _buildIconWithSubtitle(
                      Icons.build, 'Ajustes', Color(0xffff0000)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para construir un ícono con subtítulo y color personalizado
  Widget _buildIconWithSubtitle(IconData icon, String subtitle, Color color) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 40, color: color), // Ícono con color personalizado
        const SizedBox(height: 5), // Espacio entre el ícono y el subtítulo
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
