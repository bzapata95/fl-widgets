import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const [
    'Megaman',
    'Metal gEAR',
    'Super smash',
    'Final Fantasy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview1Screen')),
      body: ListView(
        children: options
            .map((game) => ListTile(
                  title: Text(game),
                  trailing: const Icon(Icons.arrow_right),
                ))
            .toList(),
      ),
    );
  }
}
