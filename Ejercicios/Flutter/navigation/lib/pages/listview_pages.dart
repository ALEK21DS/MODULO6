import 'package:flutter/material.dart';

class ListviewPages extends StatelessWidget {
  const ListviewPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Listview Basico'),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: const <Widget> [
          ListTile(
            title: Text('Elemento 1'),
            subtitle: Text('Subtitle del elemento1'),
            leading: Icon(
              Icons.add_to_queue,
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Elemento 2'),
            subtitle: Text('Subtitle del elemento2'),
            leading: Icon(
              Icons.add_to_queue,
              color: Colors.green,
            ),
          ),
          ListTile(
            title: Text('Elemento 3'),
            subtitle: Text('Subtitle del elemento3'),
            leading: Icon(
              Icons.add_to_queue,
              color: Colors.red,
            ),
          ),
        ],
      )
    );
  }
}