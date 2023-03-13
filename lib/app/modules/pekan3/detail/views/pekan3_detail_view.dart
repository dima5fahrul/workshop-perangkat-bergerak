import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pekan3_detail_controller.dart';

class Pekan3DetailView extends GetView<Pekan3DetailController> {
  Pekan3DetailView({Key? key}) : super(key: key);
  final place = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(place.imageAsset),
              Container(
                margin: const EdgeInsets.only(top: 16),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Lobster',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.20),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(place.from,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        )),
                    Container(
                      width: 1,
                      height: 25,
                      color: Colors.grey,
                    ),
                    Text(place.rank,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        )),
                    Container(
                      width: 1,
                      height: 25,
                      color: Colors.grey,
                    ),
                    Text(place.style,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Text(
                  place.description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
