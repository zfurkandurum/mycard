import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mycard/future/homePage.dart';

class splashPage extends StatefulWidget {
  const splashPage({super.key});

  @override
  State<splashPage> createState() => _openingPageState();
}

class _openingPageState extends State<splashPage> {
  @override
  void initState() {
    super.initState();
    _nangiteToHome();
  }

  // ignore: inference_failure_on_function_return_type
  _nangiteToHome() async {
    await Future.delayed(const Duration(milliseconds: 2300), () {});
    // ignore: use_build_context_synchronously
    await Navigator.push(
      context,
      // ignore: inference_failure_on_instance_creation
      MaterialPageRoute(builder: (context) => const homePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        height: 5000,
        child: Lottie.asset('assets/lottie/lottie_start_screen.json'),
      ),
    );
  }
}
