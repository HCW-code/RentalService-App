import 'package:flutter/material.dart';
import 'package:untitled7/page/home.dart';
import 'package:untitled7/page/details_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => Home(),
  '/detail': (context) => SliverDoctorDetail(),
};