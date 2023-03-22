import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:workshop_flutter/app/data/models/tourism_place.dart';

import '../controllers/pekan3_controller.dart';

class Pekan3View extends GetView<Pekan3Controller> {
  const Pekan3View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top 10 DJ'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return Card(
              child: ListTile(
            leading: Image.asset(place.imageAsset),
            title: Text(place.name),
            subtitle: Text(place.rank),
            onTap: () => Get.toNamed('/detail', arguments: place),
          ));
        },
      ),
    );
  }
}
