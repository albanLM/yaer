import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:year/pages/reader_page.dart';

import 'bindings/home_binding.dart';
import 'bindings/reader_binding.dart';
import 'pages/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    getPages: [
      GetPage(name: '/', page: () => HomePage(), binding: HomeBinding()),
      GetPage(name: '/reader', page: () => ReaderPage(), binding: ReaderBinding())
    ],
  ));
}