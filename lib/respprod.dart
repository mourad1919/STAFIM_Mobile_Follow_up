import 'package:flutter/material.dart';
class ResponsableProductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 150,
        backgroundColor: Colors.purple,
        title: Text('Responsable production',style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ) ,
      ),
      body:  Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30),
            TextField(
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
              onPressed: () {
                // Action à effectuer lors de l'appui sur le bouton de connexion
                // Par exemple, vérification des informations de connexion
                // Puis navigation vers la page suivante
                Navigator.pushNamed(context, '/home'); // Remplacez '/home' par votre route désirée
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal:200,vertical: 20)
              ),
              child: Text('Login',
              style: TextStyle (fontSize: 30,
              color: Colors.white,),
              
              
              
              ),
            ),
          ],
        ),
      ),
    );
  }
}