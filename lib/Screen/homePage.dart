import 'package:flutter/material.dart';
import 'package:mycard/Utils/color.dart';
import 'package:mycard/Utils/text.dart';
import 'package:mycard/Screen/Drawer.dart';
import 'package:mycard/Screen/addCard.dart';
import 'package:mycard/widget/new_card_view.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool onScreen = false;

  /*homePageZeroImage()
          homePageZeroText() */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: projectColor.green,
        title: Center(child: Text(ProjectText().appName)),
        actions: const [
          homePageAddIcon(),
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return const NewCardView();
        },
      ),
      drawer: const DrawerWidget(),
    );
  }
}

class homeList extends StatelessWidget {
  const homeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: const NewCardView(),
          onTap: () {},
        );
      },
    );
  }
}

class homePageAddIcon extends StatefulWidget {
  const homePageAddIcon({
    super.key,
  });

  @override
  State<homePageAddIcon> createState() => _homePageAddIconState();
}

class _homePageAddIconState extends State<homePageAddIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add_card_outlined),
      onPressed: () {
        Navigator.push(
          context,
          // ignore: inference_failure_on_instance_creation
          MaterialPageRoute(builder: (context) => const addCardManual()),
        );
      },
    );
  }
}

class homePageZeroText extends StatelessWidget {
  const homePageZeroText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Press button to add card',
      style: TextStyle(
        fontSize: 22,
        color: Colors.grey,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class homePageZeroImage extends StatelessWidget {
  const homePageZeroImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/png/homePage.png',
    );
  }
}
