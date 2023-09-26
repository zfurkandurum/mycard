// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:mycard/Screen/CardDetail.dart';

class CardView extends StatefulWidget {
  final String cardName;
  final String fullName;
  final String monthAndYear;
  final String cardNumber;
  final String halfCardNumber;
  const CardView({
    required this.cardName,
    super.key,
    this.fullName = '',
    this.monthAndYear = '',
    this.cardNumber = '',
    this.halfCardNumber = '',
  });

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  String secrutiyNumber = '****';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const cardDetailView(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 250,
          width: 400,
          margin: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.amber,
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 200, top: 20),
            child: Column(
              children: [
                const Text(
                  'card name',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 100,
                ),
                Text(
                  ' $secrutiyNumber 1234', //1234 yerine ilgili kartı son 4 hanesi
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
