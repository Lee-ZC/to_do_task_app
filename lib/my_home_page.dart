import 'package:flutter/material.dart';
import 'package:to_do_task_app/TaskModel.dart';
import 'package:to_do_task_app/menu_item_list.dart';
import 'package:to_do_task_app/new_task_page.dart';
import 'package:to_do_task_app/todo_task_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (child) => NewTaskPage(),
              ));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("To do : Pending"),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => menuItemListTitle
                  .map((e) => PopupMenuItem(child: Text(e)))
                  .toList())
        ],
      ),
      body: ListView(
        children: [
          Todo_task_card(
            todoTask: TaskModel(
                title: "Task 1",
                dueDate: "08-05-2023",
                category: "Shopping",
                status: false),
          ),
          Todo_task_card(
            todoTask: TaskModel(
                title: "Task 2",
                dueDate: "08-05-2023",
                category: "Work",
                status: false),
          ),
          Todo_task_card(
            todoTask: TaskModel(
                title: "Task 3",
                dueDate: "08-05-2023",
                category: "Personal",
                status: false),
          ),
          Todo_task_card(
            todoTask: TaskModel(
                title: "Task 4",
                dueDate: "08-05-2023",
                category: "Wishlist",
                status: false),
          ),
        ],
      ),
    );
  }
}
