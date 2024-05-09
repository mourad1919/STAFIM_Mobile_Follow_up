import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WorkOrderPage(),
    );
  }
}

class WorkOrderPage extends StatefulWidget {
  @override
  _WorkOrderPageState createState() => _WorkOrderPageState();
}

class _WorkOrderPageState extends State<WorkOrderPage> {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Opération',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Poste de travail',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Produit',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Quantité',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Quantité produit',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Durée prévue',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Durée réelle',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Statut',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'controle',
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(Text('')),
                    DataCell(
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: toggleButton,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isLaunched ? Colors.yellow : Colors.green,
                              padding: EdgeInsets.symmetric(vertical:10 ,horizontal:70 )
                            ),
                            child: Text(isLaunched ? 'Mettre en attente' : 'Lancer',
                              style: TextStyle (fontSize: 20,
                               color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 10), // Espace entre les boutons
                          ElevatedButton(
                            onPressed: otherButtonAction,
                              style: ElevatedButton.styleFrom(
                              backgroundColor:Colors.red,
                              padding: EdgeInsets.symmetric(vertical:10 ,horizontal:70 )
                            ),
                            child: Text('terminé',
                            style: TextStyle (fontSize: 20,
                               color: Colors.white),
                            ),
                            ),
                          ElevatedButton( 
                            
                          onPressed: () => context.push('/ordret'),
                          child: Text('controle')
                          ),
                          
                        ],
                      ),
                    ),
                  ],
                ),
                // Ajouter d'autres lignes ici si nécessaire
              ],
            ),
          ],
        ),
      ),
    );
  }
}


