import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workshop Pemrograman Perangkat Bergerak'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/pekan2');
                },
                child: const Text('Pekan 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/pekan3');
                },
                child: const Text('Pekan 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
