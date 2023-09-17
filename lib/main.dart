import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mycard/Screen/splashPage.dart';

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
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyCard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const splashPage(),
    );
  }
}
