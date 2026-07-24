import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

// 1. Clase Principal
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DirectorioPage(),
    );
  }
}

// 2. Pantalla Principal (StatefulWidget)
class DirectorioPage extends StatefulWidget {
  const DirectorioPage({super.key});

  @override
  State<DirectorioPage> createState() => _DirectorioPageState();
}

class _DirectorioPageState extends State<DirectorioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Directorio Istlt"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Título de la sección horizontal
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16.0, bottom: 8.0),
            child: Text(
              "Docentes destacados",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),

          // Llama a la clase del directorio horizontal
          const DirectorioHorizontal(),

          // Título de la sección vertical
          const Padding(
            padding: EdgeInsets.only(left: 16.0, top: 16.0),
            child: Text(
              "Lista de contactos",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),

          // Llama a la clase del directorio vertical (Expanded le da todo el alto restante)
          const Expanded(
            child: DirectorioVertical(),
          ),
        ],
      ),
    );
  }
}

// 3. CLASE DIRECTORIO HORIZONTAL
class DirectorioHorizontal extends StatelessWidget {
  const DirectorioHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SizedBox(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('img/carlos.jpeg'),
            ),
            SizedBox(width: 8),
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('img/endara.jpeg'),
            ),
            SizedBox(width: 8),
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('img/fabian.jpeg'),
            ),
            SizedBox(width: 8),
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('img/moreira.jpeg'),
            ),
            SizedBox(width: 8),
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('img/rivera.jpeg'),
            ),
            SizedBox(width: 8),
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('img/serafin.jpeg'),
            ),
            SizedBox(width: 8),
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('img/vanessa.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}

// 4. CLASE DIRECTORIO VERTICAL
class DirectorioVertical extends StatelessWidget {
  const DirectorioVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: const [
        ListTile(
          trailing: Icon(Icons.star, color: Color.fromARGB(255, 185, 194, 211)),
          leading: Icon(Icons.person, color: Colors.blue),
          title: Text("Ing. Israel Zurita"),
          subtitle: Text("Desarrollo de Aplicaciones Web"),
        ),
        Divider(),
        ListTile(
          trailing: Icon(Icons.star, color: Color.fromARGB(255, 185, 194, 211)),
          leading: Icon(Icons.person, color: Colors.blue),
          title: Text("Ing. Angel Novillo"),
          subtitle: Text("Desarrollo de Aplicaciones Web"),
        ),
        Divider(),
        ListTile(
          trailing: Icon(Icons.star, color: Color.fromARGB(255, 185, 194, 211)),
          leading: Icon(Icons.person, color: Colors.blue),
          title: Text("Ing. Cecilia Naula"),
          subtitle: Text("Desarrollo de Aplicaciones Web"),
        ),
        Divider(),
        ListTile(
          trailing: Icon(Icons.star, color: Color.fromARGB(255, 185, 194, 211)),
          leading: Icon(Icons.person, color: Colors.blue),
          title: Text("Ing. Cecilia Naula"),
          subtitle: Text("Desarrollo de Aplicaciones Web"),
        ),
        Divider(),
        ListTile(
          trailing: Icon(Icons.star, color: Color.fromARGB(255, 185, 194, 211)),
          leading: Icon(Icons.person, color: Colors.blue),
          title: Text("Ing. Cecilia Naula"),
          subtitle: Text("Desarrollo de Aplicaciones Web"),
        ),
        Divider(),
        ListTile(
          trailing: Icon(Icons.star, color: Color.fromARGB(255, 185, 194, 211)),
          leading: Icon(Icons.person, color: Colors.blue),
          title: Text("Ing. Cecilia Naula"),
          subtitle: Text("Desarrollo de Aplicaciones Web"),
        ),
        Divider(),
      ],
    );
  }
}