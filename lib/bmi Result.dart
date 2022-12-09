import 'dart:io';

import 'package:flutter/material.dart';
class Result extends StatefulWidget {

  double slider=50;
  double weight=0;
  double age=1;
  double calc=0;
  Result({Key? key,
    required this.slider,required this.weight,required this.age,required this.calc}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  void Bmi(){
    double calc=0;
    double h=double.parse(widget.slider.toString());
    double w=double.parse(widget.weight.toString());
    double ans=w~/h*h;
    setState(() {
      calc=ans;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("BMI Result"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              Text(widget.calc.toString()),
            ],
          ),
        ),
      ),

    );
  }
}
