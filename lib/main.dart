import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opacity Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OpacityAnimationDemo(),
    );
  }
}

class OpacityAnimationDemo extends StatefulWidget {
  @override
  _OpacityAnimationDemoState createState() => _OpacityAnimationDemoState();
}

class _OpacityAnimationDemoState extends State<OpacityAnimationDemo> {
  double _opacityLevel = 1.0; // Initial opacity level

  void _toggleOpacity() {
    setState(() {
      // Toggle opacity between 0.1 and 1.0
      _opacityLevel = _opacityLevel == 1.0 ? 0.1 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Animation Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: _opacityLevel,
              duration: Duration(seconds: 1),
              child: FlutterLogo(
                size: 200.0,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _toggleOpacity,
              child: Text(
                'Toggle Opacity',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
