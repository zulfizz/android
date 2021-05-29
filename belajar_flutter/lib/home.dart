import 'package:belajar_flutter/modules/column/main_column.dart';
import 'package:belajar_flutter/modules/provider/main_provider.dart';
import 'package:belajar_flutter/modules/routing/login_page.dart' as MainRouting;
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonMenu(
              text: 'Column',
              callback: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MainColumn()));
              },
            ),
            ButtonMenu(
              text: 'Routing',
              callback: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MainRouting.LoginPage()));
              },
            ),
            ButtonMenu(
              text: 'Provider',
              callback: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => MainProvider()));
              },
            )
          ],
        ),
      ),
    );
  }
}

class ButtonMenu extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const ButtonMenu({Key key, this.text, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(text),
        onPressed: callback,
      ),
    );
  }
}
