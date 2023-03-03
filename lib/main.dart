import 'package:eapp/firebase_options.dart';
import 'package:eapp/screens/Navbar.dart';
import 'package:eapp/screens/awal.dart';
import 'package:eapp/screens/propage.dart';
import 'package:eapp/screens/propage2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPrdts(),
    );
  }
}
