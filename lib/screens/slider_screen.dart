import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && checks'),
      ),
      body: Column(children: [
        Slider.adaptive(
            min: 100,
            max: 600,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    print(value);
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
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
                  _sliderEnabled = value ?? true;
                })),
        Switch(
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
                  _sliderEnabled = value ?? true;
                })),
        SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
                  _sliderEnabled = value;
                })),
        const AboutListTile(),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  'https://www.dlf.pt/dfpng/middlepng/262-2629475_batman-new-52-png-batman-the-dark-knight.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        )
      ]),
    );
  }
}
