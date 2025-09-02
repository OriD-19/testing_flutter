import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi CV",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mi App")),
      body: Column(
        children: [
          HeaderCard(),
          SizedBox(height: 16),
          Container(
            padding: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Experiencia",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text("Soy un cargador de huevos"),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text("Enero 2020 - Presente", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text("Lorem ipsum dolor sit amet consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: Image.network(
              "https://avatars.githubusercontent.com/u/3642052?v=4",
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => const Center(child: Text('Avatar')),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Fernando Fuentes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text("Desarrollador Flutter"),
                SizedBox(height: 6),
                Text("fernandito@example.com"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
