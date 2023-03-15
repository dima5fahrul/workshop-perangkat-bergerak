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
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                height: 1,
                width: 200,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/percobaan-pekan3');
                    },
                    child: const Text('Percobaan'),
                  ),
                  Container(
                    height: 35,
                    width: 1,
                    color: Colors.black,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/latihan-pekan3');
                    },
                    child: const Text('Latihan'),
                  ),
                  Container(
                    height: 35,
                    width: 1,
                    color: Colors.black,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/pekan3');
                    },
                    child: const Text('Tugas'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
