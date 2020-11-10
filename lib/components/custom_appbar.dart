import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 5,
              decoration: BoxDecoration(color: Colors.grey[900]),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 15,
              height: 5,
              decoration: BoxDecoration(color: Colors.grey[900]),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 20),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightGreen,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1561948955-570b270e7c36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=259&q=80"),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }
}
