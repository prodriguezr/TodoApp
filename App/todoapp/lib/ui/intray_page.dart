import 'package:flutter/material.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/ui/style.dart';
import 'package:todoapp/ui/widgets/intray_todo_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<Task> taskList = [];

  @override
  void initState() {
    super.initState();
    getList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.darkGreyColor,
      child: _buildReorderableListSimple(context),
    );
  }

  Widget _buildReorderableListSimple(BuildContext context) {
    return Theme(
      data: ThemeData(canvasColor: Colors.transparent),
      child: ReorderableListView(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.25 + 40),
        children:
            taskList.map((Task item) => _buildListTile(context, item)).toList(),
        onReorder: _onReorder,
      ),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Task item = taskList.removeAt(oldIndex);
      taskList.insert(newIndex, item);
    });
  }

  Widget _buildListTile(BuildContext context, Task item) {
    return ListTile(
      key: Key("Task-${item.taskId}"),
      title: IntrayTodo(
        title: item.title,
      ),
    );
  }

  void getList() {
    for (int i = 0; i < 12; i++) {
      taskList.add(Task(i, title: "My first todo $i"));
    }
  }
}
