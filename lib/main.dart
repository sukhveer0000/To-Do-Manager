import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/pages/home_page.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized(); 
  //init hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('myBox');

  runApp(MyToDoApp());
}

class MyToDoApp extends StatefulWidget {
  const MyToDoApp({super.key});

  @override
  State<MyToDoApp> createState() => _MyToDoAppState();
}

class _MyToDoAppState extends State<MyToDoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
