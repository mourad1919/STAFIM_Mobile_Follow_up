import 'package:flutter/material.dart';
class AdministrateurPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 150,
        backgroundColor: Colors.purple,
        title: Text('Administrateur',style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ) ,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Action à effectuer lors de l'appui sur le bouton "Login"
                // Par exemple, navigation vers la page de connexion
                Navigator.pushNamed(context, '/login');
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
            SizedBox(height: 100), // Ajouter un espace entre les boutons
            ElevatedButton(
              onPressed: () {
                // Action à effectuer lors de l'appui sur le bouton "Sign Up"
                // Par exemple, navigation vers la page d'inscription
                Navigator.pushNamed(context, '/signup');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal:180,vertical: 20)

              ),
              child:Text('Singn up',
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