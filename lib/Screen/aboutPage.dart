import 'package:flutter/material.dart';
import 'package:mycard/Utils/color.dart';
import 'package:url_launcher/url_launcher.dart';

class aboutPage extends StatefulWidget {
  const aboutPage({super.key});

  @override
  State<aboutPage> createState() => _infoPageState();
}

class _infoPageState extends State<aboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: projectColor.green,
        title: const Text("About"),
      ),
      body: aboutPage(),
    );
  }

  Column aboutPage() {
    return Column(
      children: [
        const SizedBox(height: 20),
        Image.asset(
          "assets/png/creditCard.png",
          height: 150,
        ),
        const infoTitleText(),
        const SizedBox(height: 10),
        const infoText(),
        const Row(
          children: [
            SizedBox(width: 10),
            linkedinText(),
            SizedBox(width: 10),
            linkedinButton()
          ],
        ),
        const Row(
          children: [
            SizedBox(width: 10),
            githubText(),
            SizedBox(width: 10),
            githubButton()
          ],
        ),
      ],
    );
  }
}

class infoText extends StatelessWidget {
  const infoText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        "Application developed with the Dart programming language and the Flutter.",
      ),
    );
  }
}

class githubText extends StatelessWidget {
  const githubText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("Github", style: TextStyle(fontSize: 24));
  }
}

class githubButton extends StatelessWidget {
  const githubButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19),
      child: ElevatedButton(
          onPressed: () {
            launchUrl(githubLaunchUri);
          },
          child: const Icon(Icons.link_rounded)),
    );
  }
}

class infoTitleText extends StatelessWidget {
  const infoTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 220),
      child: Text(
        "Application information",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}

class linkedinText extends StatelessWidget {
  const linkedinText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("Linkedin", style: TextStyle(fontSize: 24));
  }
}

class linkedinButton extends StatelessWidget {
  const linkedinButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          launchUrl(LinkedinLaunchUri);
        },
        child: const Icon(Icons.link_rounded));
  }
}

final Uri LinkedinLaunchUri = Uri(
  scheme: 'https',
  host: 'linkedin.com',
  path: '/in/zeki-furkan-durum-701637205/',
);

final Uri githubLaunchUri = Uri(
  scheme: 'https',
  host: 'github.com',
  path: '/zfurkandurum',
);
/*
Application information

Application developed with the Dart programming language and the Flutter UI toolkit.

The MobX was used for state management and the Provider for the dependencies injection.
 */