import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providar/login.dart';
import 'package:untitled/providar/rgstar.dart';
import 'package:untitled/scren/sinup.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:[
      ChangeNotifierProvider(
        create: (context) => myp(),
      ),
      ChangeNotifierProvider(
        create: (context) => myp2(),
      )
    ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Signup(),
          debugShowCheckedModeBanner: false,
          ),);
    }
}