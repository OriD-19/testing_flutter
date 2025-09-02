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
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi App")
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 100,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.network("https://avatars.githubusercontent.com/u/3642052?v=4", fit: BoxFit.cover, errorBuilder: (_, __, ___) => const Center(child: Text('Avatar'),)),
            ),
            Text("Fernandito")
          ]
        )
      )
    );
  }
}
