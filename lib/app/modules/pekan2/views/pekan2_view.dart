import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pekan2_controller.dart';

class Pekan2View extends GetView<Pekan2Controller> {
  var count = 0.obs;
  void add() => count++;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pekan2View'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: const TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => add(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

// int _counter = 0;
//   String _text = 'Ganjil';

//   void _incrementCounter() {
//     setState(() {
//       // Incrementing counter
//       _counter++;
//       if (_counter > 20) {
//         _counter = 0;
//       }

//       // Menampilkan bilangan ganjil
//       _text = 'Ganjil: ';
//       // for (int i = 0; i <= _counter; i++) {
//       //   if (i % 2 == 0) {
//       //     _text += '$i, ';
//       //   }
//       // }

//       // Menampilkan bilangan genap kelipatan 3
//       _text = 'Genap: ';
//       for (int i = 0; i <= _counter; i += 3) {
//         if (i % 2 == 0) {
//           _text += '$i, ';
//         }
//       }

//       // Menampilkan bilangan prima
//       // _text = 'Prima: ';
//       // for (int i = 2; i <= _counter; i++) {
//       //   if (i == 2) {
//       //     _text += '$i, ';
//       //   } else if (i % 2 != 0) {
//       //     _text += '$i, ';
//       //   }
//       // }