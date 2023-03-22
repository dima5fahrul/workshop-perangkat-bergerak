import 'package:flutter/material.dart';
import 'package:project_workshop/main_screen.dart';
import 'package:project_workshop/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismeProvider(),
      child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _text = 'Ganjil';

  void _incrementCounter() {
    setState(() {
      // Incrementing counter
      _counter++;
      if (_counter > 20) {
        _counter = 0;
      }

      // Menampilkan bilangan ganjil
      _text = 'Ganjil: ';
      // for (int i = 0; i <= _counter; i++) {
      //   if (i % 2 == 0) {
      //     _text += '$i, ';
      //   }
      // }

      // Menampilkan bilangan genap kelipatan 3
      _text = 'Genap: ';
      for (int i = 0; i <= _counter; i += 3) {
        if (i % 2 == 0) {
          _text += '$i, ';
        }
      }

      // Menampilkan bilangan prima
      // _text = 'Prima: ';
      // for (int i = 2; i <= _counter; i++) {
      //   if (i == 2) {
      //     _text += '$i, ';
      //   } else if (i % 2 != 0) {
      //     _text += '$i, ';
      //   }
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Hello World',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                '$_text',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
