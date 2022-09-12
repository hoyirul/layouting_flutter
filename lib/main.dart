import 'package:flutter/material.dart';
import 'package:layouting_flutter/partials/banner.dart';
import 'package:layouting_flutter/partials/card.dart';
import 'package:layouting_flutter/partials/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Layouting Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(children: const [
        // ignore: prefer_const_constructors
        MyHeader(),
        // ignore: prefer_const_constructors
        MyBanner(),
        
        SizedBox(height: 10.0,),
        
        // ignore: prefer_const_constructors
        MyCard(),

        SizedBox(height: 10.0,),
        // ignore: prefer_const_constructors
        MyCard(),

      ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
