import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mycard/Utils/color.dart';
import 'package:mycard/Utils/sizes.dart';
import 'package:mycard/Utils/constants.dart';
import 'package:mycard/widget/colorPickerPanel.dart';

class addCardManual extends StatefulWidget {
  const addCardManual({
    super.key,
  });

  @override
  State<addCardManual> createState() => _addCardManualState();
}

class _addCardManualState extends State<addCardManual> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Localization hata'),
          backgroundColor: projectColor.green,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.fit_screen_sharp),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/NFC-Icon.svg',
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    CardName(),
                    SizedBox(
                      height: 10,
                    ),
                    CardNumber(),
                    SizedBox(
                      height: 10,
                    ),
                    FullName(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CardCVV(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: CardDate(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ColorPicker(),
              SizedBox(height: 50, width: 400, child: CardAddButton()),
            ],
          ),
        ),
      ),
    );
  }
}

///CardAddButton
class CardAddButton extends StatelessWidget {
  const CardAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showSuccessSnackbar(context, 'Localization hata');
        //ScaffoldMessenger.of(context).showSnackBar(snackBar);

        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        backgroundColor: projectColor.green,
      ),
      child: const Text('Add Card'),
    );
  }
}

///snacBar
void showSuccessSnackbar(BuildContext context, String message) {
  final snackbar = SnackBar(
    content: Center(
      child: Text(
        message,
        style: const TextStyle(fontSize: ProjectSizes.largeFontSize),
      ),
    ),
    backgroundColor: projectColor.green,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

///date
class CardDate extends StatelessWidget {
  const CardDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(19),
      ],
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: projectColor.green),
        ),
        prefixIconColor: projectColor.green,
        hintText: 'MM/YY',
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Icon(Icons.calendar_month_outlined),
        ),
      ),
    );
  }
}

///CardCvv
class CardCVV extends StatelessWidget {
  const CardCVV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(19),
      ],
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: projectColor.green),
        ),
        prefixIconColor: projectColor.green,
        hintText: 'CVV',
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Icon(Icons.security_outlined),
        ),
      ),
    );
  }
}

///FullName
class FullName extends StatelessWidget {
  const FullName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: projectColor.green),
        ),
        prefixIconColor: projectColor.green,
        hintText: 'Full Name',
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Icon(Icons.person_outline_outlined),
        ),
      ),
    );
  }
}

///CardNumber
class CardNumber extends StatelessWidget {
  const CardNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(19),
      ],
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: projectColor.green),
        ),
        prefixIconColor: projectColor.green,
        hintText: '0000 1111 2222 3333',
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Icon(Icons.credit_card),
        ),
      ),
    );
  }
}

///CardName
class CardName extends StatelessWidget {
  const CardName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: projectColor.green),
        ),
        focusColor: projectColor.green,
        prefixIconColor: projectColor.green,
        hintText: 'Card Name',
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Icon(Icons.tag_outlined),
        ),
      ),
    );
  }
}
