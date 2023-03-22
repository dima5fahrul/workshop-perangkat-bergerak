import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:workshop_flutter/app/data/models/tourism_place.dart';
import 'package:workshop_flutter/app/modules/pekan4/views/percobaan_detail_view.dart';

class ListItemView extends GetView {
  final TourismPlace place;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  const ListItemView({
    Key? key,
    required this.place,
    required this.isDone,
    required this.onCheckboxClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
      child: ListTile(
        // menambahkan checkbox & gambar
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: isDone,
              onChanged: onCheckboxClick,
              checkColor: Colors.blueAccent,
            ),
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
      ),
    );
  }
}
