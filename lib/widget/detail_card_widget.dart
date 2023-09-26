import 'package:flutter/material.dart';

class DetailCardWidget extends StatelessWidget {
  const DetailCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 250,
      width: 400,
      child: Card(
        color: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(),
      ),
    );
  }
}
