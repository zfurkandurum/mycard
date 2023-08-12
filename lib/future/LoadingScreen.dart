import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mycard/Utils/color.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({super.key});

  @override
  State<loadingScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen>
    with TickerProviderStateMixin {
  var lottieStart = 'assets/lottie/lottie_start_screen.json';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: projectColor.green,
      body: loadingLottie(lottieStart: lottieStart),
    );
  }
}

class loadingLottie extends StatelessWidget {
  const loadingLottie({
    super.key,
    required this.lottieStart,
  });

  final String lottieStart;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        lottieStart,
        height: 250,
      ),
    );
  }
}
