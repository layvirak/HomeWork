import 'package:flutter/material.dart';
List<String> favoriteList=<String>[];
class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: GridView.builder(
        //primary: true,
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,

        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
        ),

        itemCount: favoriteList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            width: 50,
            alignment: Alignment.topRight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(favoriteList[index]),fit: BoxFit.cover,
                ),
            ),
            child: IconButton(
              color: Colors.blue,
              icon: Icon(Icons.favorite),onPressed: (){
              setState(() {
                favoriteList.removeAt(index);
              });
            },),
          );
        },
      ),
    );
  }
}
