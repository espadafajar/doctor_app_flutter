import 'package:doctor_app/data/data.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: listDataCategories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: index.isEven ? 20 : 0),
                width: 175,
                child: Stack(
                  children: [
                    Positioned(
                      right: 25,
                      top: 25,
                      left: 5,
                      bottom: 5,
                      child: Container(
                        width: 200,
                        height: 200,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 10)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              listDataCategories[index].title.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: listDataCategories[index].warna,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Icon(
                            listDataCategories[index].icon,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
