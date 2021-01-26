import 'package:flutter/material.dart';
import 'package:imageproject_app/Page/FavoriteScreen.dart';

class ViewImageScreen extends StatefulWidget {
  final String image;
final int index;
  ViewImageScreen({this.index,this.image});

  @override
  _ViewImageScreenState createState() => _ViewImageScreenState();
}
class _ViewImageScreenState extends State<ViewImageScreen> {
  bool isFavorite=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.contain,
          ),
        ),
        child: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(icon: Icon(isFavorite==false?Icons.favorite_border:Icons.favorite),
                onPressed: () {
              setState(() {
                isFavorite=!isFavorite;
                isFavorite==true?favoriteList.add(widget.image):favoriteList.removeAt(widget.index);
              });
                },
            ),
          ],
        ),
      ),
    );
  }
}
