import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text('El Ateneo Grand Splendid'), accountEmail: Text('Elatenogs@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Compras'),
          ),
          ListTile(
            leading: Icon(Icons.car_rental),
            title: Text('Alquiler'),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Promociones'),
          ),
          ListTile(
            leading: Icon(Icons.messenger),
            title: Text('Escribenos'),
          ),
          ListTile(
            leading: Icon(Icons.directions),
            title: Text('Ubicanos'),
          )
        ],
      ),
    );
  }
}