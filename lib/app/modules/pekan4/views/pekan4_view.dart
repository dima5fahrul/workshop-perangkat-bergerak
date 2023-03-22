import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pekan4_controller.dart';

class Pekan4View extends GetView<Pekan4Controller> {
  const Pekan4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pekan4View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Pekan4View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
