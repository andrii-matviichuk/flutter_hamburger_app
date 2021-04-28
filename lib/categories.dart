import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentSelectedItemIndx = 0;
  @override
  Widget build(BuildContext context) {
    int itemsCounter = 10;
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemsCounter,
          itemBuilder: (context, index) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? 20 : 0,
                      right: 20,
                    ),
                    height: 90,
                    width: 90,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentSelectedItemIndx = index;
                        });
                      },
                      child: Card(
                        child: Icon(
                          Icons.fastfood,
                          color: index == currentSelectedItemIndx
                              ? Colors.white
                              : Colors.black.withOpacity(0.7),
                        ),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        color: index == currentSelectedItemIndx
                            ? Colors.black.withOpacity(0.7)
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(
                    left: index == 0 ? 20 : 0,
                    right: 20,
                  ),
                  width: 90,
                  child: Row(
                    children: [
                      Text("Category"),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
