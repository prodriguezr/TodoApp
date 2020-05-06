import 'package:flutter/material.dart';
import 'package:todoapp/ui/style.dart';

class IntrayTodo extends StatelessWidget {
  final String title;

  IntrayTodo({key, this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        color: Style.redColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          new BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Radio(

          ),
          Column(
            children: <Widget>[
              Text(title, style: Style.darkTodoTitle,)
            ],
          )
        ],
      ),
    );
  }
}
