import 'package:belajar_flutter/home.dart';
import 'package:flutter/material.dart';

class MainColumn extends StatelessWidget {
  const MainColumn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
        leading: IconButton(icon: Icon(Icons.home), onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Home()));
        }),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ListTile(
            //   leading: Icon(Icons.account_circle),
            //   title: Text('Lorem ipsum dolor sit amet'),
            //   subtitle: Text('subtitle'),
            //   trailing: IconButton(
            //     icon: Icon(Icons.delete),
            //     onPressed: () {
            //       ScaffoldMessenger.of(context)
            //           ..removeCurrentSnackBar()
            //           ..showSnackBar(SnackBar(content: Text('ok')));
            //     },
            //   ),
            // )
            const Text('Text 1'),
            const Text('Text 2'),
            const Text('Text 3')
          ],
        ),
      ),
    );
  }
}
