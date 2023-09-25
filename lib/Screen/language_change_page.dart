import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mycard/Utils/Utils.dart';
import 'package:mycard/Utils/color.dart';
import 'package:mycard/Utils/extension/string_extension.dart';
import 'package:mycard/core/lang/locale_keys.g.dart';
import 'package:mycard/widget/languageWidget.dart';

class LanguageChangePage extends StatefulWidget {
  const LanguageChangePage({super.key});

  @override
  State<LanguageChangePage> createState() => _LanguageChangePageState();
}

class _LanguageChangePageState extends State<LanguageChangePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: projectColor.green,
          title: Text(LocaleKeys.language_language.locale),
        ),
        body: ListView(
          children: [
            const SizedBox(height: 4),
            LanguageWidget(
              languageImage: 'TRFlag',
              languageName: LocaleKeys.language_turkish.locale,
              onTap: () {
                context.locale = Constants.TR_LOCALE;
              },
            ),
            const SizedBox(height: 4),
            LanguageWidget(
              languageImage: 'USFlag',
              languageName: LocaleKeys.language_english.locale,
              onTap: () {
                context.locale = Constants.EN_LOCALE;
              },
            ),
            LanguageWidget(
              languageImage: 'ITFlag',
              languageName: LocaleKeys.language_italian.locale,
              onTap: () {
                context.locale = Constants.IT_LOCALE;
              },
            ),
          ],
        ),
      ),
    );
  }
}
