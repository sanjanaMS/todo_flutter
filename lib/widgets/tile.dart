import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Tile extends StatelessWidget{
 final bool toggletextdecoration;
 final Function checkboxcallback;
 final Function longPressCallBack;
 String tasktitle;
 Tile({this.tasktitle,this.toggletextdecoration,this.checkboxcallback,this.longPressCallBack});
  

  
  @override
  Widget build(BuildContext context) {


    return ListTile(
onLongPress:longPressCallBack ,
      title: Text(tasktitle,
      style: TextStyle(
        decoration:toggletextdecoration?TextDecoration.lineThrough:null,
      ),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: toggletextdecoration,
        onChanged: checkboxcallback,
      ),
    );
  }
}




