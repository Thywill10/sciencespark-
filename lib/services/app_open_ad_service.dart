import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'ad_helper.dart';

class AppOpenAdService {
  static AppOpenAd? _appOpenAd;

  static void loadAd() {
    AppOpenAd.load(
      adUnitId: AdHelper.appOpenAdUnitId,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (AppOpenAd ad) {
          _appOpenAd = ad;
        },
        onAdFailedToLoad: (LoadAdError error) {
          _appOpenAd = null;
        },
      ),
    );
  }

  static void showAd() {
    if (_appOpenAd == null) return;

    _appOpenAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (AppOpenAd ad) {
        ad.dispose();
        loadAd();
      },
      onAdFailedToShowFullScreenContent: (AppOpenAd ad, AdError error) {
        ad.dispose();
        loadAd();
      },
    );

    _appOpenAd!.show();
  }
}