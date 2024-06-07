

import 'package:aulas/nome.dart';
import 'package:aulas/paginaprincipal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          iconTheme: IconThemeData(
            color: Colors.white
          ),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        )
      ),
      home: const Nome(),
    );
  }
}

