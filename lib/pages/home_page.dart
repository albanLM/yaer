import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:year/controllers/home_controller.dart';
import 'package:year/pages/reader_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final HomeController controller = Get.find();

    return Scaffold(
      body: Center(child: ElevatedButton(child: Text("Ouvrir Epub"), onPressed: () => Get.to(() => ReaderPage()),)),
    );
  }
}