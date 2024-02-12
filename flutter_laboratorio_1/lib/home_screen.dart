import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LABORATORIO DE CEUTEC'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('CEUTEC'),
              accountEmail: Text('laboratorio1@unitec.edu'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green, // Cambia el color aquí
                backgroundImage: NetworkImage(''),
              ),
            ),
            ListTile(
              title: const Text('Noticias'),
              leading: const Icon(Icons.newspaper),
              onTap: () {
                Navigator.pushNamed(context, '/noticias');
              },
            ),
            ListTile(
              title: const Text('Cambio de monedas'),
              leading: const Icon(Icons.currency_exchange),
              onTap: () {
                Navigator.pushNamed(context, '/cambioMoneda');
              },
            ),
            ListTile(
              title: const Text('Lista de tareas'),
              leading: const Icon(Icons.list),
              onTap: () {
                Navigator.pushNamed(context, '/listaTareas');
              },
            ),
            ListTile(
              title: const Text('Podcast'),
              leading: const Icon(Icons.headset),
              onTap: () {
                Navigator.pushNamed(context, '/podcast');
              },
            ),
          ], // Cierre de children
        ), // Cierre de ListView
      ), // Cierre de Drawer
    ); // Cierre de Scaffold
  }
}