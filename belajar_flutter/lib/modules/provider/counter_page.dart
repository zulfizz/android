import 'package:belajar_flutter/home.dart';
import 'package:belajar_flutter/modules/provider/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      create: (context) => Counter(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Counter With Provider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<Counter>(
                builder: (context, counter, _) => Text(
                  counter.count.toString(),
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Consumer<Counter>(
                    builder: (context, counter, _) => ButtonMenu(
                      text: 'Decrement',
                      callback: () {
                        counter.decrement();
                      },
                    ),
                  ),
                  Consumer<Counter>(
                    builder: (context, counter, _) => ButtonMenu(
                      text: 'Increment',
                      callback: () {
                        counter.increment();
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
