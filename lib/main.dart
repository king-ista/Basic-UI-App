import 'package:aplication/animation/anim_view.dart';
import 'package:aplication/facebook/facebook.dart';
import 'package:aplication/instagram/instagram.dart';
import 'package:aplication/messenger/messenger.dart';
import 'package:aplication/tiktok/tiktok.dart';
import 'package:aplication/youtube/youtube.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ignore: prefer_const_constructors
  runApp(MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: const LearnFlutter(),
      debugShowCheckedModeBanner: false,
    );
  }
}
