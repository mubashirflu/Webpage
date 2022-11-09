// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/Landpage.dart';
// import 'package:flutter_application_2/Navbar.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//               begin: Alignment.centerLeft,
//               end: Alignment.centerRight,
//               colors: [
//             Color.fromRGBO(195, 20, 50, 1.0),
//             Color.fromRGBO(37, 11, 54, 1.0)
//           ])),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Navbar(),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
//               child: Landpage(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Landpage.dart';
import 'package:flutter_application_2/Navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(100, 89, 100, 1.0),
            Color.fromRGBO(160, 289, 89, 1.0),
          ]),
        ),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Navbar(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Landpage(),
            )
          ],
        )));
  }
}
