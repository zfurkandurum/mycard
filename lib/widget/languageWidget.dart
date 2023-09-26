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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        height: 70,
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              const SizedBox(width: 5),
              SizedBox(
                height: 60,
                width: 60,
                child: Image(
                  image: AssetImage('assets/png/$languageImage.png'),
                ),
              ),
              const SizedBox(width: 115),
              Text(
                languageName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
