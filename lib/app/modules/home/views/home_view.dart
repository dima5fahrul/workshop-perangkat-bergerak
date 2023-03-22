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
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  'Bab 2 : Dart Basic',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/pekan2');
                      },
                      child: const Text('Pekan 2'),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 20,
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  'Bab 3 : Flutter Layout',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/percobaan-pekan3');
                      },
                      child: const Text('Percobaan'),
                    ),
                    const VerticalDivider(
                      width: 10,
                      color: Colors.black,
                      thickness: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/latihan-pekan3');
                      },
                      child: const Text('Latihan'),
                    ),
                    const VerticalDivider(
                      width: 10,
                      color: Colors.black,
                      thickness: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/pekan3');
                      },
                      child: const Text('Tugas'),
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 20,
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  'Bab 4 : State Management',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/percobaan-pekan4');
                      },
                      child: const Text('Percobaan'),
                    ),
                    const VerticalDivider(
                      width: 10,
                      color: Colors.black,
                      thickness: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Get.toNamed('/latihan-pekan4');
                      },
                      child: const Text('Latihan'),
                    ),
                    const VerticalDivider(
                      width: 10,
                      color: Colors.black,
                      thickness: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/pekan4');
                      },
                      child: const Text('Tugas'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
