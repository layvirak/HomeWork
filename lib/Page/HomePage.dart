import 'package:flutter/material.dart';
import 'package:imageproject_app/Page/CategoryScreen.dart';
import 'package:imageproject_app/Page/FavoriteScreen.dart';
import 'package:imageproject_app/Page/PopularScreen.dart';
import 'package:imageproject_app/Widget/CustomSelection.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> tabBarList=<Widget>[
    CategoryScreen(),
    PopularScreen(),
    FavoriteScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child:Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Home"),
        actions: [
          Icon(Icons.search)
        ],
        bottom: TabBar(
          tabs: [
            Tab(
              text: "CATEGORIES",
            ),
            Tab(
              text: "POPULAR",
            ),
            Tab(
              text: "FAVORITE",
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: tabBarList,
      )
    ),);
  }
}