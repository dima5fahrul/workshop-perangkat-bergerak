import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TpurismListView extends GetView {
  const TpurismListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TpurismListView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TpurismListView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
