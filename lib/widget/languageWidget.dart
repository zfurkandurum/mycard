import 'package:flutter/material.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 200,
      child: InkWell(
        onTap: () {},
        child: const Card(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://is4-ssl.mzstatic.com/image/thumb/Purple62/v4/5d/58/be/5d58be0b-5e88-55de-21f3-e11ec6c44b9a/source/512x512bb.jpg',
                    ),
                  ),
                  SizedBox(width: 10),
                  Text('türkçe'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
