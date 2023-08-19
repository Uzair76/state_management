import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      setState(() {

      });
    });
  }


  @override
  Widget build(BuildContext context) {

  print(build);
    return Scaffold(

        body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(DateTime.now().hour.toString()
          //     +':'+DateTime.now().minute.toString()
          //     +':'+DateTime.now().second.toString(),style: TextStyle(
          //   fontSize: 50
          // ),),
        Center(
        child: Text(count.toString(),
    style: TextStyle(fontSize: 50),),
    ),

    ],

    ));
    // floatingActionButton: FloatingActionButton(
    // onPressed: (){
    // count++;
    // print(count);
    // setState(() {
    //
    // });
    // },
    // child: Icon(Icons.add),
    // ));
  }
}
