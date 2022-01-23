import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Slider and checks')),
        body: Column(children: [
          Slider.adaptive(
              min: 0,
              max: 600,
              activeColor: AppTheme.primary,
              // divisions: 5, // Puntos de anclajes
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          Checkbox(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              }),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              }),
          Switch(
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              }),
          SwitchListTile.adaptive(
              title: const Text('Habilitar slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              }),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: NetworkImage('https://github.com/bzapata95.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ]));
  }
}
