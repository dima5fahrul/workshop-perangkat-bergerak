import 'package:flutter/material.dart';
import 'package:project_workshop/detail_screen.dart';
import 'package:project_workshop/done_tourism.dart';
import 'package:project_workshop/model/tourism_place.dart';
import 'package:project_workshop/tourism_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top 10 DJ'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.done_all_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DoneTourismList(),
                ),
              );
            },
          ),
        ],
      ),
      body: const TourismList(),
    );
  }
}
