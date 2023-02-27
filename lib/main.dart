
import 'dart:async';

import 'package:flutter/material.dart';

import 'Assignment/navDrawer.dart';
import 'Grid_StackUI.dart';
import 'Grid_with_CardUI.dart';
import 'ProfileUI_Stack.dart';
import 'StackDemo.dart';



void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  @override
  void initState() {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Grid_StackUI()));///LoginForm
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        /// to set background color for container
        // color: Colors.brown,
        ///set background image for container
        //image: DecorationImage(
        //  image: NetworkImage(
        //    "https://images.pexels.com/photos/949587/pexels-photo-949587.jpeg?auto=compress&cs=tinysrgb&w=400"),
        //fit: BoxFit.cover)


        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.green,Colors.blue,Colors.yellow])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //////Image(image: AssetImage("assets/icons/Dog.png"))
              Image.asset("assets/icons/Dog.png"),
              const Text(
                "Animals",
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
