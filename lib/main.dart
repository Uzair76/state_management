import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/home_screen.dart';
import 'package:state_management/provider/count_provider.dart';
import 'package:state_management/provider/example_1_provider.dart';
import 'package:state_management/provider/fav_provider.dart';
import 'package:state_management/screens/count_screen.dart';
import 'package:state_management/screens/eample_1_screen.dart';
import 'package:state_management/screens/fav_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (_)=> CountProvider()),
       ChangeNotifierProvider(create: (_)=> Example1Provider()),
       ChangeNotifierProvider(create: (_)=> FavouriteScreenProvider())
     ],
       child: MaterialApp(
       title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple
      ),
      home: MyFavScreen(),
    ),
      );

  }
}


