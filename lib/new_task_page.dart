import 'package:flutter/material.dart';

class NewTaskPage extends StatelessWidget {
  const NewTaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.check),),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What is to be done ?",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Enter Task Here"),
            ),
            SizedBox(height: 20),
            Text(
              "Due Date",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                SizedBox(
                  width: 270,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Date not set"),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2090));
                    print(date);
                  },
                  icon: Icon(Icons.calendar_month),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Add to list",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            DropdownButton(
              isExpanded: true,
                items: ["Personal", "Shopping", "Wishlist", "Work"]
                    .map((v) => DropdownMenuItem(child: Text(v),
                  value: v,
                ))
                    .toList(),
                onChanged: (v) {},),
          ],
        ),
      ),
    );
  }
}
