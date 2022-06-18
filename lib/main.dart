import 'package:flutter/material.dart';
import 'package:formblock/welcome/welcome.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
