import 'package:flutter/material.dart';
import 'package:to_do_task_app/TaskModel.dart';
import 'package:to_do_task_app/todo_task_card.dart';



class Todo_task_card extends StatelessWidget {

  final TaskModel todoTask;

  const Todo_task_card({Key? key,required this.todoTask}) : super(key: key);
  
  
  taskCategoryColor(String category){
    
    switch(category){
      case "Shopping":
        return Colors.amber;
      case "Work":
        return Colors.blue;
      case "Personal":
        return Colors.red;
      case "Wishlist":
        return Colors.orange;
    }
    
    
  }
  

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        leading: Checkbox(value: todoTask.status, onChanged: (value) {}),
        title: Text(todoTask.title),
        subtitle: Text(
          todoTask.dueDate,
          style:
          TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        trailing: Text(
          todoTask.category,
          style:
          TextStyle(color:taskCategoryColor(todoTask.category), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
