import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class banner extends StatefulWidget {
  const banner({super.key});

  @override
  State<banner> createState() => _bannerState();
}

class _bannerState extends State<banner> {
  late BannerAd bannerAd;
  bool isAdLoaded = false;

  // ignore: always_declare_return_types, inference_failure_on_function_return_type
  initBannerAd() {
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: '',
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          isAdLoaded = true;
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          print(error);
        },
      ),
      request: const AdRequest(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
