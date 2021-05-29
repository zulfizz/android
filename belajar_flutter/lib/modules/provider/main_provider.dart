import 'package:belajar_flutter/home.dart';
import 'package:belajar_flutter/modules/provider/app_color.dart';
import 'package:belajar_flutter/modules/provider/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainProvider extends StatelessWidget {
  const MainProvider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppColor>(
      create: (context) => AppColor(),
      child: Scaffold(
        appBar: AppBar(
          title: Consumer<AppColor>(
            builder: (context, appColor, _) => Text(
              'Provider State Management',
              style: TextStyle(color: appColor.color),
            ),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Home()));
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<AppColor>(
                builder: (context, appColor, _) => AnimatedContainer(
                  width: 100,
                  height: 100,
                  color: appColor.color,
                  duration: Duration(milliseconds: 500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('AB'),
                  Consumer<AppColor>(
                    builder: (context, appColor, _) => Switch(
                        value: appColor.isLightBlue,
                        onChanged: (newValue) {
                          appColor.isLightBlue = newValue;
                        }),
                  ),
                  Text('LB'),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => CounterPage()));
                },
                child: Text("Counter"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
