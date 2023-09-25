// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LanguageWidget extends StatelessWidget {
  final String languageImage;
  final String languageName;
  final VoidCallback onTap;

  const LanguageWidget({
    required this.languageImage,
    required this.languageName,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 200,
      child: InkWell(
        onTap: onTap,
        child: Card(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Image(
                      image: AssetImage('assets/png/$languageImage.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    languageName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
