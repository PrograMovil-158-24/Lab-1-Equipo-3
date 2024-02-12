import 'package:flutter/material.dart';

class ListaTareasPage extends StatelessWidget {
  const ListaTareasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de asignaturas en CEUTEC'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ListTareas(
            nombre: 'Programacion II',
            descripcion: 'Repasar los temas de las variables',
            fecha: '11/02/24',
            url: 'https://portal.unitec.edu/',
          ),
          SizedBox(height: 16.0),
          ListTareas(
            nombre: 'Inlges II',
            descripcion: 'Reading and listening',
            fecha: '11-02-2024',
            url: 'https://portal.unitec.edu/',
          ),
          SizedBox(height: 16.0),
          ListTareas(
            nombre: 'Administracion de Proyectos',
            descripcion: 'Realizar el informe final del proyecto',
            fecha: '11-02-2024',
            url: 'https://portal.unitec.edu/',
          ),
          SizedBox(height: 16.0),
          ListTareas(
            nombre: 'Administracion II',
            descripcion: 'Crear diapositivas sobre la etica en las empresas',
            fecha: '11-02-2024',
            url: 'https://portal.unitec.edu/',
          ),
          SizedBox(height: 16.0),
          ListTareas(
            nombre: 'Examen Fisica I',
            descripcion:
                'Resolver los ejercicios del MRU y Caida Libre',
            fecha: '11-02-2024',
            url: 'https://portal.unitec.edu/',
          ),
        ],
      ),
    );
  }
}

class ListTareas extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String fecha;
  final String url;

  const ListTareas({super.key, 
    required this.nombre,
    required this.descripcion,
    required this.fecha,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nombre,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.date_range, color: Colors.grey),
                    const SizedBox(width: 4.0),
                    Text(
                      fecha,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    const Icon(Icons.link, color: Colors.blue),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              descripcion,
              style: const TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}