import 'package:flutter/material.dart';
//import './login/login.dart';
import './wrongScreen/wrong_screen.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Read Book TMT',
    home: Scaffold(
      body: Wrong(),
    ),
  ),
);

// class Test extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return TestScreen();
//   }
// }
//
// class TestScreen extends State <Test> {
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: ButtonTheme(
//         child: RaisedButton(
//           child: Text(
//               "Retry later"
//           ),
//           onPressed: (){
//
//           },
//         ),
//       ),
//     );
//   }
// }

//---------------------------------------------------------------


// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
//
// void main() {
//   debugPaintSizeEnabled = false; // Set to true for visual layout
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   static final showCard = true; // Set to false to show Stack
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter layout demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter layout demo'),
//         ),
//         body: Center(child:_buildStack()),
//       ),
//     );
//   }
//
//   // #docregion Card
//   // Widget _buildCard() => SizedBox(
//   //   height: 210,
//   //   child: Card(
//   //     child: Column(
//   //       children: [
//   //         ListTile(
//   //           title: Text('1625 Main Street',
//   //               style: TextStyle(fontWeight: FontWeight.w500)),
//   //           subtitle: Text('My City, CA 99984'),
//   //           leading: Icon(
//   //             Icons.restaurant_menu,
//   //             color: Colors.blue[500],
//   //           ),
//   //         ),
//   //         Divider(),
//   //         ListTile(
//   //           title: Text('(408) 555-1212',
//   //               style: TextStyle(fontWeight: FontWeight.w500)),
//   //           leading: Icon(
//   //             Icons.contact_phone,
//   //             color: Colors.blue[500],
//   //           ),
//   //         ),
//   //         ListTile(
//   //           title: Text('costa@example.com'),
//   //           leading: Icon(
//   //             Icons.contact_mail,
//   //             color: Colors.blue[500],
//   //           ),
//   //         ),
//   //       ],
//   //     ),
//   //   ),
//   // );
//   // #enddocregion Card
//
//   // #docregion Stack
//   Widget _buildStack() => Stack(
//     alignment: const Alignment(0.8, -0.1),
//     children: [
//       CircleAvatar(
//         backgroundImage: AssetImage('images/image_login.jpg'),
//         radius: 200,
//       ),
//       Container(
//         decoration: BoxDecoration(
//           color: Colors.black45,
//         ),
//         child: Text(
//           'Mia B',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.amber,
//           ),
//         ),
//       ),
//
//       Positioned(
//         top: 0,
//         child: _buildtestStack(),
//       )
//     ],
//   );
// // #enddocregion Stack
// }
//
// Widget _buildtestStack() => Stack(
//   alignment: const Alignment(0.8, -2),
//   children: [
//     CircleAvatar(
//       backgroundImage: AssetImage('images/image_login.jpg'),
//       radius: 100,
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.black45,
//       ),
//       child: Text(
//         'Mia v',
//         style: TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           color: Colors.blueAccent,
//         ),
//       ),
//     ),
//   ],
// );
// // #enddocregion Stack
