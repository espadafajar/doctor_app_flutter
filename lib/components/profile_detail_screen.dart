import 'package:doctor_app/components/subtitle_text.dart';
import 'package:doctor_app/data/data.dart';
import 'package:doctor_app/data/data_model.dart';
import 'package:flutter/material.dart';

class ProfileDetailScreen extends StatelessWidget {
  final DoctorModel model;
  ProfileDetailScreen({this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(model.imgUrl),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.name,
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w800),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: model.specialist,
                        style: TextStyle(fontSize: 12, color: Colors.black54)),
                    TextSpan(
                        text: " - ",
                        style: TextStyle(fontSize: 12, color: Colors.black54)),
                    TextSpan(
                        text: model.location,
                        style: TextStyle(fontSize: 12, color: Colors.black54)),
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue[50],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Icon(
                          Icons.phone,
                          size: 17,
                          color: Colors.blue[900],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.pink[50],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Icon(
                          Icons.message,
                          size: 17,
                          color: Colors.pink[800],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.orange[50],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Icon(
                          Icons.phone,
                          size: 17,
                          color: Colors.orange[900],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
