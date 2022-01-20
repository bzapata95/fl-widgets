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
        CustomCardTypeTwo(
          username: 'bzapata95',
        ),
        CustomCardTypeTwo(username: 'zenorocha'),
        CustomCardTypeTwo(username: 'guilherme'),
        CustomCardTypeTwo(username: 'guilhermerodz'),
        CustomCardTypeTwo(username: 'diego3g'),
        CustomCardTypeTwo(username: 'LauraBeatris'),
        SizedBox(
          height: 100,
        )
      ], padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
    );
  }
}
