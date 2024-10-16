import 'package:flutter/material.dart';
import 'package:todo_app/models/todo.dart';



class TodoProvider extends ChangeNotifier {
    var todos = [
    Todo(id: 1, title: "first todo"),
  ];
void addTodo({required String title}) {
    var todo =Todo (
      id: todos.isNotEmpty ? todos[todos.length - 1].id + 1 : 1,
      title: title,
    );

    todos.insert(0, todo);

    notifyListeners();
  }
   void toggleDone(int index) {
    todos[index].done = !todos[index].done;
    notifyListeners();
  }
  void toggleTodoDone(int id) {
    final index = todos.indexWhere((todo) => todo.id == id);
    if (index != -1) {
      todos[index].done = !todos[index].done;
      notifyListeners(); 
    }


}
}