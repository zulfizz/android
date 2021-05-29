import 'package:belajar_flutter/home.dart';
import 'package:belajar_flutter/modules/routing/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing'),
        leading: IconButton(icon: Icon(Icons.home), onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Home()));
        }),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('LOGIN'),
          style: ElevatedButton.styleFrom(
            primary: Colors.amber
          ),
          onPressed: () {
            print('login');
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
              return MainPage();
            }));
          },
        ),
      ),
    );
  }
}
