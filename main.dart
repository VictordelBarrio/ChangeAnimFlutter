import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.cyan;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container / Textfield'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Los poderosos Relieros Del Norte',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            TextField(
              decoration:  InputDecoration(
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 25,
                ),
                hintText: 'Enter Here!!',
              ),
              onChanged: (value){
                if(value.length < 10){
                  _cambiarForma1();
                } else {
                  _cambiarForma2();
                }
              },
            ),
            AnimatedContainer(
              width: _width,
              height: _heigth,
              decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
              duration: Duration(seconds: 1),
              curve: Curves.elasticIn,
            ),
          ],
        ),
      ),
    );
  }
  void _cambiarForma1() {
    final random = Random();
    setState(() {
      _width = 100.0;
      _heigth = 100.0;
      _color = Color.fromRGBO(
          12,
          240,
          170,
          1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
  void _cambiarForma2() {
    final random = Random();

    setState(() {
      _width = 250.0;
      _heigth = 350.0;
      _color = Color.fromRGBO(
          120,
          37,
          200,
          1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
