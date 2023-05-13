// ignore_for_file: avoid_print, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'dart:math' as math;

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Hommmmme Screen'),
        ),
        body: IconButton(
          icon: Hero(
            tag: 'https://picsum.photos/250?image=9',
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
          iconSize: 50,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => AboutScreen()),
            );
            // print('Pressed!');
          },
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('About Screen'),
        ),
        body: Hero(
          tag: 'https://picsum.photos/250?image=9',
          child: Image.network('https://picsum.photos/250?image=9'),
        ),
      ),
    );
  }
}

///////////  Navigation
// class AboutScreen extends StatelessWidget {
//   const AboutScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: Text('About Screen'),
//         ),
//         body: ElevatedButton(
//           child: Text('Home'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => MyApp(),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: Text('Home Screen'),
//         ),
//         body: ElevatedButton(
//           child: Text('About'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => AboutScreen(),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// ==============counter app======
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   // here put variables
//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: Text('Stateful Widget'),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.add),
//           onPressed: () {
//             setState(() {
//               count++;
//             });
//           },
//         ),
//         body: Center(
//           child: Text(
//             '$count',
//             style: TextStyle(fontSize: 50),
//           ),
//         ),
//       ),
//     );
//   }
// }
// ==============counter app======

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.black38,
//           title: const Text('im learning about flutter'),
//         ),
//         body: ListView.builder(
//           itemBuilder: (_, index) {
//             return Container(
//               color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
//                   .withOpacity(1.0),
//               width: 500,
//               height: 500,
//             );
//           },
//         ),

//         // ListView(
//         //   scrollDirection: Axis.horizontal,
//         //   children: [
//         //     Container(
//         //       color: Colors.blue,
//         //       width: 500,
//         //       height: 500,
//         //     ),
//         //     Container(
//         //       color: Colors.orange,
//         //       width: 500,
//         //       height: 500,
//         //     ),
//         //     Container(
//         //       color: Colors.green,
//         //       width: 500,
//         //       height: 500,
//         //     ),
//         //   ],
//         // ),

//         // Stack(
//         //   children: [
//         //     Container(
//         //       color: Colors.orange,
//         //       width: 100,
//         //       height: 100,
//         //       child: const Align(
//         //         alignment: Alignment.center,
//         //         child: Icon(Icons.sunny),
//         //       ),
//         //     ),
//         //   ],
//         // ),

//         // floatingActionButton: FloatingActionButton(
//         //   onPressed: () {
//         //     print('pressed');
//         //   },
//         //   child: const Icon(Icons.add),
//         // ),

//         // bottomNavigationBar: BottomNavigationBar(
//         //   items: [
//         //     BottomNavigationBarItem(
//         //       icon: Icon(Icons.home),
//         //       label: 'Home',
//         //     ),
//         //     BottomNavigationBarItem(
//         //       icon: Icon(Icons.school),
//         //       label: 'School',
//         //     ),
//         //     BottomNavigationBarItem(
//         //       icon: Icon(Icons.business),
//         //       label: 'Business',
//         //     ),
//         //   ],
//         // ),

//         // drawer: Drawer(
//         //   child: Text('Drawer................!!'),
//         // ),
//         // const Row(
//         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //     crossAxisAlignment: CrossAxisAlignment.end,
//         //     children: [
//         //       Expanded(
//         //         flex: 4,
//         //         child: Icon(Icons.abc_outlined),
//         //       ),
//         //       Icon(Icons.person),
//         //       Icon(Icons.leaderboard),
//         //       Icon(Icons.back_hand)
//         //     ]),

//         //  Center(
//         //   child: Container(
//         //     child: const Text("Here I am"),
//         //     padding: const EdgeInsets.all(50),
//         //     color: Colors.yellowAccent,
//         //   ),
//         // ),
//       ),
//     );
//   }
// }
