import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Detail Page'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Yeay!!!');
              },
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
