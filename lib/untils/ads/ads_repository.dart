import 'package:flutter/material.dart';
import 'package:the_quotation_book/untils/ads/ads_interface.dart';
import 'package:yandex_mobileads/mobile_ads.dart';

class AdsRepository with WidgetsBindingObserver implements AdsInterface{
  late final Future<AppOpenAdLoader> _adLoader;
  AppOpenAd? _ad;

  static var isAdShowing = false;
  static var isColdStartAdShow = false;

  String adUnitId = 'R-M-12199577-1';

  @override
  void clearAppOpenAd() {
    _ad!.destroy();
    _ad = null;
  }

  @override
  void didChangeAppLifecycleStates(AppLifecycleState state) {
     if(state == AppLifecycleState.resumed){
      showAdIsAvailable();
    }
  }

  @override
  Future<void> initAds() async {
    MobileAds.setUserConsent(true);
    MobileAds.initialize();
    MobileAds.setDebugErrorIndicator(true);
    _adLoader = _createAppOpenAdLoader();
    loadAppOpenAd();
    WidgetsBinding.instance.addObserver(this);
  }

  Future<AppOpenAdLoader> _createAppOpenAdLoader() async {
    return AppOpenAdLoader.create(
      onAdLoaded: (AppOpenAd appOpenAd) {
        _ad = appOpenAd;
        if(!isColdStartAdShow){
          showAdIsAvailable();
          isColdStartAdShow = true;
        }
      },
      onAdFailedToLoad: (error) {
        _ad = null;
      },
    );
  }


  @override
  Future<void> loadAppOpenAd() async {
    final adLoader = await _adLoader;
    await adLoader.loadAd(adRequestConfiguration: AdRequestConfiguration(adUnitId: adUnitId));
  }

  @override
  void setAdEventListener({required AppOpenAd appOpenAd}) {
   appOpenAd.setAdEventListener(eventListener: AppOpenAdEventListener(
      onAdShown: () {
        debugPrint('>>>> onAdShow');
        isAdShowing = true;
      },
      onAdFailedToShow: (error) {
        debugPrint('>>>> onAdFailedToShow');
        isAdShowing = false;
        clearAppOpenAd();
        loadAppOpenAd();
      },
      onAdDismissed: () {
           debugPrint('>>>> onAdDismissed');
        isAdShowing = false;
        clearAppOpenAd();
        loadAppOpenAd();
      },
      onAdClicked: () {
          debugPrint('>>>> onAdClicked');
      },
      onAdImpression: (impressionData) {
         debugPrint('>>>> onAdImpression ${impressionData.getRawData()}');
      },
    ));
  }

  @override
  Future<void> showAdIsAvailable() async {
    var appOpenAd = _ad;
    if(appOpenAd != null && !isAdShowing){
      setAdEventListener(appOpenAd: appOpenAd);
      await appOpenAd.show();
      await appOpenAd.waitForDismiss();

    }else{
      loadAppOpenAd();
    }
  }




}