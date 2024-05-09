import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Ordret extends StatefulWidget {
  @override
  _OrdretState createState() => _OrdretState();
}

class _OrdretState extends State<Ordret> {
  TextEditingController _ordreController = TextEditingController();
  TextEditingController _posteController = TextEditingController();
  TextEditingController _produitController = TextEditingController();
  TextEditingController _quantiteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 150,
        backgroundColor: Colors.purple,
        title: Text(
          'Ordret',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
         
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Ordre de travail',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _ordreController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Poste de travail',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _posteController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Produit',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _produitController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Quantité original a produire',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _quantiteController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
                  SizedBox(height: 20),
                Row(
                children: [
                  Text( 
                    'Quantité produite',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _produitController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Ordre de fabrication',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _quantiteController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
                Row(
                children: [
                  Text( 
                    'Date de début',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _produitController,
                      decoration: InputDecoration(
                      
                      ),
                    ),
                  ),
                  SizedBox(width: 30), 
                  Text(
                    'a ',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _quantiteController,
                      decoration: InputDecoration(
                      
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
                Row(
                children: [
                  Text( 
                    'Durée prévue',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _produitController,
                      decoration: InputDecoration(
                      
                      ),
                    ),
                  ),
                  SizedBox(width: 30), 
                  Text(
                    'munites ',
                    style: TextStyle(fontSize: 25),
                  ),
                  
                ],
              ),
              SizedBox(height: 100),
              ElevatedButton(
                    onPressed: () => context.push('/suiv'), 

                    child: Text('suiv de temps',
              style: TextStyle (fontSize: 30,
              color: Colors.white),
              
              
              ),
                    
                    ),
          
            ],
            
          ),
        ),
        
      ),
      
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: Ordret(),
  ));
}
