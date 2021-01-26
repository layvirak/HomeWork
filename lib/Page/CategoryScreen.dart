import 'package:flutter/material.dart';
import 'package:imageproject_app/Page/ViewImage.dart';
import 'package:imageproject_app/Widget/CustomSelection.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int currentIndex = 1;
  List<String> imageList=<String>[
    "Assets/Image/images.jpg",
    "Assets/Image/images1.jpg",
    "Assets/Image/images2.jpg",
    "Assets/Image/images4.jpg",
    "Assets/Image/images5.jpg",
    "Assets/Image/images6.jpg",
    "Assets/Image/images7.jpg",
    "Assets/Image/images8.jpg",
    "Assets/Image/9.jpg",
    "Assets/Image/10.jpg",
    "Assets/Image/11.jpg",
    "Assets/Image/12.jpg",
    "Assets/Image/13.jpg",
    "Assets/Image/14.jpg",
    "Assets/Image/15.jpg",
    "Assets/Image/17.jpg",
    "Assets/Image/16.jpg",
    "Assets/Image/18.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              CustomSelection(
                title: "Image File",
                isSelect: currentIndex==1,
                onTab: () {
                  setState(() {
                    currentIndex=1;
                  });
                },
              ),
              CustomSelection(
                title: "Image Picture",
                isSelect: currentIndex==2,
                onTab: () {
                  setState(() {
                    currentIndex=2;
                  });
                },
              ),
              CustomSelection(
                title: "Image Photo",
                isSelect: currentIndex==3,
                onTab: () {
                  setState(() {
                    currentIndex=3;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 10,),
          Expanded(child: GridView.builder(
            //primary: true,
            // physics: NeverScrollableScrollPhysics(),
            // shrinkWrap: true,

            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                ),

            itemCount: imageList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ViewImageScreen(index: index,image: imageList[index],)));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imageList[index]),fit: BoxFit.cover,
                      )
                  ),
                ),
              );
            },
          ),),
        ],
      ),
    );
  }
}
