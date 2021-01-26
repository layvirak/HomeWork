import 'package:flutter/material.dart';
class CustomSelection extends StatefulWidget {
  final String title;
  bool isSelect;
  final Function onTab;
  CustomSelection({this.title,this.isSelect,this.onTab});
  @override
  _CustomSelectionState createState() => _CustomSelectionState();
}

class _CustomSelectionState extends State<CustomSelection> {
  @override
  Widget build(BuildContext context) {
    if(widget.isSelect==null)widget.isSelect=false;
    return GestureDetector(
      onTap: ()=>widget.onTab(),
      child: Container(
        margin: EdgeInsets.only(left: 10,top: 10),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey,width: 0.5),
          color: widget.isSelect==false?Colors.white:Colors.red,
        ),
        child: Text(widget.title),
      ),
    );
  }
}
