import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PercobaanPart1View extends GetView {
  const PercobaanPart1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: const Text(
                'Surabaya Submarine Monument',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              child: const Text(
                'The Surabaya Submarine Monument is a monument in Surabaya, East Java, Indonesia. It is located in the Surabaya Bay, near the Surabaya Port. The monument was built to commemorate the 44 Indonesian sailors who died in the sinking of the submarine KRI Nanggala 402 on 21 April 2021.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
