import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Nome extends StatefulWidget {
  const Nome({super.key});

  @override
  State<Nome> createState() => _NomeState();
}

class _NomeState extends State<Nome> {
  final TextEditingController _controller = TextEditingController();
  String texto = "Centralizado";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Antony"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            texto = _controller.text;
          });
        },
        child: const Icon(Icons.rocket),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, // Altere para center
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Insira um texto',
              ),
            ),
          ),
          Text(
            texto,
            style: const TextStyle(fontSize: 36),
          ),
    AnimatedTextKit(
    animatedTexts: [
    TyperAnimatedText('vai corinthians,'),
    TyperAnimatedText('sccp,'),
    TyperAnimatedText('Bando de loucos'),
    TyperAnimatedText('luka doncic'),
    ],
    onTap: () {
    print("Tap Event");
    },
    ),
    ],
    ),
    );
  }
}