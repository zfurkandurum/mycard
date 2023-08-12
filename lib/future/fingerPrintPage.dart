import 'package:flutter/material.dart';

class fingerPrintPage extends StatefulWidget {
  const fingerPrintPage({super.key});

  @override
  State<fingerPrintPage> createState() => _fingerPrintPageState();
}

class _fingerPrintPageState extends State<fingerPrintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: 5000,
        child: const Column(
          children: [
            Text(""),
          ],
        ),
      ),
    );
  }
}
////buraya uygulama açıldığında önce splashPage ardından burası(fingerPrintPage)
/// finger print aşaası geçilirse home page sayfası gelecek
