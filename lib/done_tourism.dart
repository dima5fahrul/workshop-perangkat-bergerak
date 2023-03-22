import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:project_workshop/detail_screen.dart';
import 'package:project_workshop/model/tourism_place.dart';
import 'package:project_workshop/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class DoneTourismList extends StatelessWidget {
  const DoneTourismList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TourismPlace> doneTourismPlaceList =
        Provider.of<DoneTourismeProvider>(
      context,
      listen: false,
    ).doneTourismPlaceList;
    print(doneTourismPlaceList);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Telah Dikunjungi'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: doneTourismPlaceList.length,
        itemBuilder: (context, index) {
          final place = doneTourismPlaceList[index];
          return ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.done_outline),
                const SizedBox(width: 20),
                Image.asset(
                  place.imageAsset,
                ),
              ],
            ),
            title: Text(place.name),
            subtitle: Text(place.rank),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  place: place,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
