import 'package:flutter/material.dart';
import 'package:yandex_mobileads/mobile_ads.dart';

abstract interface class AdsInterface {
  
  Future<void> initAds() async {}

  void didChangeAppLifecycleStates(AppLifecycleState state) {}

  Future<void> loadAppOpenAd() async {}

  Future<void> showAdIsAvailable() async {}

  void setAdEventListener({required AppOpenAd appOpenAd}) {}

  void clearAppOpenAd() {}

}
