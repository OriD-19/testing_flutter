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
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderCard(),
            SizedBox(height: 16),
            ExperienceCard(
              "Cargador de Huevos",
              "Soy un cargador de huevos",
              "Enero 2020 - Presente",
              "Lorem ipsum dolor sit amet consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            ),
            ExperienceCard(
              "Cargador de Pollos",
              "Soy un cargador de pollos",
              "Enero 2020 - Presente",
              "Lorem ipsum dolor sit amet consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            ),
            ExperienceCard(
              "Cargador de Bollos",
              "Soy un cargador de bollos",
              "Enero 2020 - Presente",
              "Lorem ipsum dolor sit amet consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            ),
            ExperienceCard(
              "Cargador de Leches",
              "Soy un cargador de leches",
              "Enero 2020 - Presente",
              "Lorem ipsum dolor sit amet consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            ),
            Text(
              "Mi educacion",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            EducationWidget(),
            Text(
              "Mis habilidades",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
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
              child: Align(
                alignment: Alignment.topLeft,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  children: [
                    Chip(label: Text("Flutter")),
                    SizedBox(width: 8),
                    Chip(label: Text("Dart")),
                    SizedBox(width: 8),
                    Chip(label: Text("Firebase")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  "Habilidades",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
                SizedBox(width: 8),
                Text(
                  "Flutter, Dart, Firebase",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              "Lorem ipsum dolor sit amet consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            ),
          ],
        ),
      ),
    );
  }
}

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  "Educación",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
                SizedBox(width: 8),
                Text(
                  "Ingeniería en Sistemas",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text("2015 - 2020", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(
              "Lorem ipsum dolor sit amet consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            ),
          ],
        ),
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String title;
  final String company;
  final String duration;
  final String description;

  const ExperienceCard(
    this.title,
    this.company,
    this.duration,
    this.description, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
                SizedBox(width: 8),
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 8),
            Text(duration, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(description),
          ],
        ),
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
