import 'package:flutter/cupertino.dart';

class CategoriesDataModel {
  final Color warna;
  final String title;
  final IconData icon;

  CategoriesDataModel({this.warna, this.title, this.icon});
}

class DoctorModel {
  final int id;
  final String imgUrl;
  final String name;
  final String specialist;
  final String location;
  final Color warna;
  DoctorModel(
      {this.imgUrl,
      this.location,
      this.name,
      this.specialist,
      this.warna,
      this.id});
}

class JadwalDokter {
  final int id;
  final String tanggal;
  final String jenisJadwal;
  final String darijam;
  final String sampaijam;
  final int dokterID;
  JadwalDokter(
      {this.id,
      this.tanggal,
      this.jenisJadwal,
      this.darijam,
      this.sampaijam,
      this.dokterID});
}
