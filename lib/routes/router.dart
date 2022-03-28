import 'package:flutter/material.dart';
import 'package:untitled7/page/home.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => Home(selectedIndex:0,
                    lat: "0",
                    long: "0",
                    id: "0"),
};