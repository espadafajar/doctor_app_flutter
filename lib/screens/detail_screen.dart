import 'package:doctor_app/components/profile_detail_screen.dart';
import 'package:doctor_app/data/data.dart';
import 'package:doctor_app/data/data_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class DetailScreen extends StatelessWidget {
  final int dokterid;
  final DoctorModel model;
  DetailScreen({this.dokterid, this.model});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting("id");
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.network(
              "https://image.freepik.com/free-vector/group-doctors-care-covid-19_24877-62369.jpg",
              fit: BoxFit.cover,
            ),
            height: 350,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: DraggableScrollableSheet(
              expand: true,
              minChildSize: .7,
              maxChildSize: .9,
              initialChildSize: .7,
              builder: (context, scrollController) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(0, -4),
                            color: Colors.blue[800].withOpacity(.2))
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      ProfileDetailScreen(
                        model: model,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "About Doctor",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Upcoming Schedules",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: List.generate(
                            listJadwal.length,
                            (index) => listJadwal[index].dokterID == dokterid
                                ? Container(
                                    height: 100,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: model.warna.withOpacity(.5),
                                        borderRadius: BorderRadius.circular(7)),
                                    child: Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 15),
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              color: model.warna,
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                DateFormat.d('id').format(
                                                    DateTime.parse(
                                                        listJadwal[index]
                                                            .tanggal)),
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Text(
                                                DateFormat.MMM('id').format(
                                                    DateTime.parse(
                                                        listJadwal[index]
                                                            .tanggal)),
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  listJadwal[index].jenisJadwal,
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black87,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: DateFormat.EEEE(
                                                                'id')
                                                            .format(DateTime
                                                                .parse(listJadwal[
                                                                        index]
                                                                    .tanggal)),
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors
                                                                .black54)),
                                                    TextSpan(
                                                        text: " . ",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors
                                                                .black54)),
                                                    TextSpan(
                                                        text: listJadwal[index]
                                                            .darijam,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors
                                                                .black54)),
                                                    TextSpan(
                                                        text: " - ",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors
                                                                .black54)),
                                                    TextSpan(
                                                        text: listJadwal[index]
                                                            .sampaijam,
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: Colors
                                                                .black54)),
                                                  ]),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                : Container()),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 25,
            left: 15,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
