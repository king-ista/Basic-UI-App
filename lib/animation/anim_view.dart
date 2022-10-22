import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
        centerTitle: true,
        leading: Icon(Icons.back_hand),
        actions: [
          Icon(Icons.abc),
          Icon(Icons.abc),
          Icon(Icons.abc),
        ],
      ),
    );
  }
}
