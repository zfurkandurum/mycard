import 'package:flutter/material.dart';
import 'package:mycard/Utils/color.dart';
import 'package:mycard/widget/languageWidget.dart';

class LanguageChangePage extends StatefulWidget {
  const LanguageChangePage({super.key});

  @override
  State<LanguageChangePage> createState() => _LanguageChangePageState();
}

class _LanguageChangePageState extends State<LanguageChangePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: projectColor.green,
          title: const Text('Language'),
        ),
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return const LanguageWidget();
          },
        ),
      ),
    );
  }
}
