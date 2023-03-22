import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:workshop_flutter/app/data/models/tourism_place.dart';

import '../controllers/pekan3_controller.dart';

class PercobaanPekan3 extends GetView<Pekan3Controller> {
  const PercobaanPekan3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top 10 DJ'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {},
            // => Get.toNamed('/percobaan-detail', arguments: place),
            child: listItem(place),
          );
        },
      ),
    );
  }
}

Widget listItem(TourismPlace place) {
  return Card(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(place.imageAsset),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  place.name,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(place.rank),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
