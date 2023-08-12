// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:mycard/Product/data.dart';
import 'package:mycard/future/CardDetail.dart';

class NewCardView extends StatefulWidget {
  const NewCardView({
    super.key,
  });

  @override
  State<NewCardView> createState() => _NewCardViewState();
}

class _NewCardViewState extends State<NewCardView> {
  Future<void> loadData() async {
    if (dataListString.isNotEmpty) {
      final dataStrings = dataListString.split(';');
      final loadedDataList = <Data>[];

      for (final dataString in dataStrings) {
        final dataValues = dataString.split(',');

        if (dataValues.length == 5) {
          // Update the length to 5 as there are 5 attributes in the Data class
          final fullName = dataValues[0];
          final cardName = dataValues[1];
          final cardNumber = int.parse(dataValues[2]);
          final expiryDate = int.parse(dataValues[3]);
          final securityCode = int.parse(dataValues[4]);

          final data = Data(
            FullName: fullName,
            CardName: cardName,
            CardNumber: cardNumber,
            ExpiryDate: expiryDate,
            SecrutiyCode: securityCode,
          );
          loadedDataList.add(data);
        }
      }

      setState(() {
        dataList = loadedDataList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          // ignore: inference_failure_on_instance_creation
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
          child: const Padding(
            padding: EdgeInsets.only(right: 200, top: 20),
            child: Column(
              children: [
                Text(
                  'card name',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  '**** 1234', //1234 yerine ilgili kartı son 4 hanesi
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
