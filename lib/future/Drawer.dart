import 'package:flutter/material.dart';
import 'package:mycard/Utils/color.dart';
import 'package:mycard/Utils/text.dart';
import 'package:mycard/future/aboutPage.dart';
import 'package:mycard/future/splashPage.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: projectColor.green,
            ),
            child: Text(
              ProjectText().appName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          const biometricsButton(),
          const languageButton(),
          const donateButton(),
          const aboutButton(),
        ],
      ),
    );
  }
}

class removeAdsButton extends StatelessWidget {
  // ignore: public_member_api_docs
  const removeAdsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.attach_money_outlined),
      title: Text(ProjectText().removeAds),
      onTap: () {
        //ilk sürümde olmaya bilir
        //ilgili sayfaya yönledirme var
        //google play ??
      },
    );
  }
}

class languageButton extends StatelessWidget {
  const languageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.language_outlined),
      title: Text(ProjectText().language),
      onTap: () {
        //sayfa çısılsın burada dil seçenekleri olacak
      },
    );
  }
}

class biometricsButton extends StatelessWidget {
  const biometricsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.fingerprint_outlined),
      title: Text(ProjectText().biometrics),
      onTap: () {
        //burada alert şeklinde uyarı cıkacak çıkan uyarıda ilgili yazılar parmak izi resmi ve bir disable butonu olacak
        //parmak izi telefonun kendi parmak izini alacak
        //uygulamadaki tek güvelik bu şekilde sadece parmak izi
      },
    );
  }
}

class themeButton extends StatelessWidget {
  const themeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.lightbulb),
      title: Text(ProjectText().themeMod),
      onTap: () {
        //burada lottie ile animasyon şeklinde buton olacak dark/litgh
        //?????
      },
    );
  }
}

class aboutButton extends StatelessWidget {
  const aboutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.info_outline_rounded),
      title: Text(ProjectText().about),
      onTap: () {
        Navigator.push(
          context,
          // ignore: inference_failure_on_instance_creation
          MaterialPageRoute(builder: (context) => const aboutPage()),
        );
      },
    );
  }
}

class donateButton extends StatelessWidget {
  const donateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.monetization_on_outlined),
      title: Text(ProjectText().donate),
      onTap: () {
        Navigator.push(
          context,
          // ignore: inference_failure_on_instance_creation
          MaterialPageRoute(builder: (context) => const splashPage()),
        );
      },
    );
  }
}
