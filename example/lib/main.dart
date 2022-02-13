import 'package:flutter/material.dart';
import 'package:smart_grid_view_nls/smart_grid_view.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: SmartGridView(
          tileWidth: 128,
          tileHeight: 168,
          children: List.generate(
            80,
            (index) => Card(
              child: GridTile(
                child: Text('tile #$index'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
