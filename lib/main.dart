import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Demo Flutter',
        theme: ThemeData(primarySwatch: Colors.lightGreen),
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 0.0;

  void onChanged(double value) {
    setState(() {
      this.sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Demo Slider'),
        ),
        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[
              Text('Nilai aktif: ${sliderValue.round()}'),
              Slider(
                min: 0.0,
                max: 100.0,
                value: this.sliderValue,
                onChanged: (double value) {
                  onChanged(value);
                },
              )
            ],
          ),
        ),
      );
}
