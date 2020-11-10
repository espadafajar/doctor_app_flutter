import 'package:doctor_app/components/categories.dart';
import 'package:doctor_app/components/custom_appbar.dart';
import 'package:doctor_app/components/header_title.dart';
import 'package:doctor_app/components/search_widget_home.dart';
import 'package:doctor_app/components/subtitle_text.dart';
import 'package:doctor_app/components/top_doctors.dart';
import 'package:doctor_app/data/data.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            HeaderTitle(),
            SearchWidgetHome(),
            SubtitleText(title: "Categories"),
            Categories(),
            SubtitleText(title: "Top Dcotors"),
            TopDoctor(),
          ],
        ),
      ),
    );
  }
}
