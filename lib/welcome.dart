

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 150,
        backgroundColor: Colors.purple,
        title: Text('Welcome',style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        ) ,
        
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              
              onPressed: () => context.go('/resptech'),
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal:100 , vertical:20 ),
              ),
              child: Text('Responsable Technique',
              style: TextStyle(fontSize: 30,
              color: Colors.white ,
              ) ,
              
              ),  
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => context.go('/respprod'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal:100 , vertical:20 ),
              ),
              
              child: Text('Responsable Production',
              style: TextStyle (fontSize: 30,
              color: Colors.white),
              ),
            ),
            SizedBox(height: 10),


            ElevatedButton(
              onPressed: () => context.go('/oper'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal:200,vertical: 20)

              ),
              child: Text('Opérateur',
              style: TextStyle (fontSize: 30,
              color: Colors.white,),
              
              ),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => context.go('/admin'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal:160 ,vertical:20 )

              ),
              child: Text('Administrateur',
              style: TextStyle(fontSize: 30,
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
