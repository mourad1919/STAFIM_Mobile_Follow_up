
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';




class OperatPage extends StatelessWidget {
  @override
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.push('/ordre'),
                 
                
              
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal:180,vertical: 20)

              ),
              child:Text('ordre de travail',
              style: TextStyle (fontSize: 30,
              color: Colors.white,),
              
              
              ),

              
            ),
            SizedBox(height: 30), // Espacement entre les boutons
            ElevatedButton(
              onPressed: () {
                // Action à effectuer lors du clic sur "Ordre de fabrication"
                // Ajoutez votre logique ici
              
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal:145,vertical: 20)

              ),
              child:Text('ordre de fabrication',
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
