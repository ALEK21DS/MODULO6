import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: 'HOME'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: 'OPT',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: 'TEST',
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: ()=>{
            print("test")
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: Drawer(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 50
                  ),
                  Text('HOME')
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.border_color,
                    size: 50,
                  ),
                  Text('EDIT')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.call,
                    size: 50,
                  ),
                  Text('CALL')
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.comment,
                    size: 50,
                  ),
                  Text('COMMENT')
                ],
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text('Hello World!'),
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('APP TEST'),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
          shadowColor: Colors.black,
          elevation: 30,
        ),
      ),
    );
  }
}
