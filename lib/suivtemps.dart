import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SuivTemps(),
    );
  }
}

class SuivTemps extends StatefulWidget {
  @override
  _SuivTempsState createState() => _SuivTempsState();
}

class _SuivTempsState extends State<SuivTemps> {
  bool isLaunched = false;

  void toggleButton() {
    setState(() {
      isLaunched = !isLaunched;
    });
  }

  void otherButtonAction() {
    // Mettre l'action pour l'autre bouton ici
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 150,
        backgroundColor: Colors.purple,
        title: Text(
          'ordre de travail',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    
    );
  }
}
