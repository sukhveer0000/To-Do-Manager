import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('myBox');

  //very first time opening the app
  void createInitialData() {
    toDoList = [
      ["Improve Communication", false],
      ["Learn how compose a mail", false],
    ];
  }

  //load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
