import 'package:flutter/material.dart';

class CustomCardTipeOne extends StatelessWidget {
  const CustomCardTipeOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      const ListTile(title: Text('Soy titulo'), subtitle: Text('asdasdasdasd')),
      Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          TextButton(onPressed: () {}, child: const Text('Cancelar')),
          TextButton(onPressed: () {}, child: const Text('OK'))
        ]),
      )
    ]));
  }
}
