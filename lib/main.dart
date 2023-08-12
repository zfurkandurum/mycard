import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mycard/future/splashPage.dart';

void main() {
  runApp(const MainApp());
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyCard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const splashPage(),
    );
  }
}
