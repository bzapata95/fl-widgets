import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card widget')),
      body: ListView(children: const [
        CustomCardTipeOne(),
        CustomCardTypeTwo(),
        CustomCardTypeTwo(),
        CustomCardTypeTwo(),
        CustomCardTypeTwo(),
        CustomCardTypeTwo(),
        SizedBox(
          height: 100,
        )
      ], padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
    );
  }
}
