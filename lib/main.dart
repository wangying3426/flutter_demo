import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String? currentLifecycle;

  @override
  void initState() {
    GestureBinding.instance!.resamplingEnabled = true;
    SystemChannels.lifecycle.setMessageHandler((msg) async {
      currentLifecycle = msg;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NotificationListener(
          onNotification: (ScrollNotification notification) {
            if (notification is ScrollStartNotification) {
              debugPrint("$currentLifecycle scroll start.....");
            } else if (notification is ScrollUpdateNotification) {
              debugPrint("$currentLifecycle scrolling.....");
            } else if (notification is ScrollEndNotification) {
              debugPrint("$currentLifecycle scroll end....");
            }
            return false;
          },
          child: ListView(children: getWidgets()),
        ),
      ),
    );
  }

  List<Widget> getWidgets() {
    List<Widget> widgets = [];
    for (int i = 0; i < 20; i++) {
      widgets.add(const ListTile(
        title: Text(
          "title",
          style: TextStyle(fontSize: 24),
        ),
        subtitle: Text("subtitle"),
      ));
    }
    return widgets;
  }
}