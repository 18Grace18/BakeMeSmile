import 'package:firebase_core/firebase_core.dart';

import 'screens/signin.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // This is main file
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bake Me Smile App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Signin(),
    );
  }
}