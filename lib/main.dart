import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Color(0xFFFF9000)), home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  String name = 'Hello World';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
                color: Colors.orange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 208, 42, 42),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print('Text Button Clicked');
                          },
                          child: Text('Click Me'),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Text Button Clicked');
                      },
                      child: Text('Click Me'),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Container(
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 208, 42, 42),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print('Text Button Clicked');
                          },
                          child: Text('Click Me'),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Text Button Clicked');
                      },
                      child: Text('Click Me'),
                    )
                  ],
                )),
          )
        ],
      )),
    );
  }
}
