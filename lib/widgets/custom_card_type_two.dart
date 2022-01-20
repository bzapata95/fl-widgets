import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTypeTwo extends StatelessWidget {
  const CustomCardTypeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 20,
        shadowColor: AppTheme.primary.withOpacity(0.2),
        child: Column(children: [
          // Image(image: NetworkImage('https://github.com/bzapata95.png'))
          const FadeInImage(
            image: NetworkImage('https://github.com/bzapata95.png'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text('Github: bzapata95'),
          )
        ]));
  }
}
