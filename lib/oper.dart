import 'package:flutter/material.dart';
import 'package:flutter_application_4/ordretravail.dart';
import 'package:go_router/go_router.dart';

import 'package:odoo_rpc/odoo_rpc.dart';


void main() async {
  runApp(MyApp());
}

class OperateurPage extends StatefulWidget {
  @override
  _OperateurPageState createState() => _OperateurPageState();
}

class _OperateurPageState extends State<OperateurPage> {
  final OdooClient orpc = OdooClient('http://127.0.0.1:8069/');
  List<dynamic> users = [];

  @override
  void initState() {
    super.initState();
    _authenticate();
  }

  Future<void> _authenticate() async {
    try {
      await orpc.authenticate("odoo", "admin", "admin");

      final Resultat = await orpc.callKw({
        'model': 'res.users',
        'method': 'search_read',
        'args': [],
        'kwargs': {
          'context': {'bin_size': true},
          'domain': [],
          'fields': [],
          'limit': 8000,
        },
      });

      setState(() {
        users = Resultat;
      });
    } catch (e) {
      print('Erreur lors de la connexion à Odoo : $e');
      // Afficher un message d'erreur à l'utilisateur ou enregistrer le journal des erreurs.
    }
  }

  

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 150,
        backgroundColor: Colors.purple,
        title: Text(
          'operateur',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async {
                
                try {
                
                  print("----------------");
                  context.push('/ordre');
                
                } on OdooException {
                  print('count');
                  print('.............. catch');
                } finally {
                  print('dsdljdkjdksjdkjdkjsdskdjkdj');
                  () => context.push('/ordre');
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 200, vertical: 20)),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
