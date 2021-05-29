import 'package:flutter/material.dart';

class CobaContainer extends StatelessWidget {
  const CobaContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coba Container"),
        leading: Icon(Icons.menu),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Card(
              child: Text('Card'),
            )
          ],
        ),
      ),
    );
  }
}
