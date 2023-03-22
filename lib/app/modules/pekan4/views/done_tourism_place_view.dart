import 'package:flutter/material.dart';

import 'package:workshop_flutter/app/data/models/tourism_place.dart';
import 'package:workshop_flutter/app/modules/pekan4/views/percobaan_detail_view.dart';

class DoneTourismPlaceView extends StatelessWidget {
  const DoneTourismPlaceView({Key? key, required this.doneTourismPlace})
      : super(key: key);
  final List<TourismPlace> doneTourismPlace;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Telah Dikunjungi'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: doneTourismPlace.length,
        itemBuilder: (context, index) {
          final place = doneTourismPlace[index];
          return ListTile(
            // menambahkan checkbox & gambar
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
                builder: (context) => PercobaanDetailView(
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
