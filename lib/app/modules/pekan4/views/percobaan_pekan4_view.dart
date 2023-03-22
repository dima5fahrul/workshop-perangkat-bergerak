import 'package:flutter/material.dart';
import 'package:workshop_flutter/app/data/models/tourism_place.dart';
import 'package:get/get.dart';
import 'package:workshop_flutter/app/modules/pekan4/views/done_tourism_place_view.dart';
import 'package:workshop_flutter/app/modules/pekan4/views/list_item_view.dart';
import 'package:workshop_flutter/app/modules/pekan4/views/tourism_list_view.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<TourismPlace> donetourismPlaceList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top 10 DJ'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DoneTourismPlaceView(
                  doneTourismPlace: donetourismPlaceList,
                ),
              ),
            ),
            icon: const Icon(Icons.done_outline),
          ),
        ],
      ),
      body: TourismListView(
        donetourismPlace: donetourismPlaceList,
      ),
    );
  }
}
