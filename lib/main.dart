// import 'package:flutter/material.dart';
//
// import 'package:usermanagement/splashscreen.dart';
//
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home:  SplashScreen (),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:usermanagement/homescreen.dart';
import 'package:usermanagement/splashscreen.dart';
import 'userdetailsscreen.dart'; // Ensure this is correctly imported

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Management',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home:  SplashScreen(),
    );
  }
}








