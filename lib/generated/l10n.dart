// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `No favorites yet`
  String get noFavoritesYet {
    return Intl.message(
      'No favorites yet',
      name: 'noFavoritesYet',
      desc: '',
      args: [],
    );
  }

  /// `Delete Favorite`
  String get deleteFavorite {
    return Intl.message(
      'Delete Favorite',
      name: 'deleteFavorite',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this favorite?`
  String get areYouSureYouWantToDeleteThisFavorite {
    return Intl.message(
      'Are you sure you want to delete this favorite?',
      name: 'areYouSureYouWantToDeleteThisFavorite',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Tape`
  String get tape {
    return Intl.message(
      'Tape',
      name: 'tape',
      desc: '',
      args: [],
    );
  }

  /// `Favorit`
  String get favorit {
    return Intl.message(
      'Favorit',
      name: 'favorit',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notifications {
    return Intl.message(
      'Notification',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Clear Cache`
  String get clearCache {
    return Intl.message(
      'Clear Cache',
      name: 'clearCache',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get drawerHeader {
    return Intl.message(
      'Filter',
      name: 'drawerHeader',
      desc: '',
      args: [],
    );
  }

  /// `Data is refreshing...`
  String get dataIsRefreshing {
    return Intl.message(
      'Data is refreshing...',
      name: 'dataIsRefreshing',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english_locale {
    return Intl.message(
      'English',
      name: 'english_locale',
      desc: '',
      args: [],
    );
  }

  /// `Russia`
  String get russia_locale {
    return Intl.message(
      'Russia',
      name: 'russia_locale',
      desc: '',
      args: [],
    );
  }

  /// `My Favorites`
  String get myFavorites {
    return Intl.message(
      'My Favorites',
      name: 'myFavorites',
      desc: '',
      args: [],
    );
  }

  /// `age`
  String get age {
    return Intl.message(
      'age',
      name: 'age',
      desc: '',
      args: [],
    );
  }

  /// `alone`
  String get alone {
    return Intl.message(
      'alone',
      name: 'alone',
      desc: '',
      args: [],
    );
  }

  /// `amazing`
  String get amazing {
    return Intl.message(
      'amazing',
      name: 'amazing',
      desc: '',
      args: [],
    );
  }

  /// `anger`
  String get anger {
    return Intl.message(
      'anger',
      name: 'anger',
      desc: '',
      args: [],
    );
  }

  /// `architecture`
  String get architecture {
    return Intl.message(
      'architecture',
      name: 'architecture',
      desc: '',
      args: [],
    );
  }

  /// `art`
  String get art {
    return Intl.message(
      'art',
      name: 'art',
      desc: '',
      args: [],
    );
  }

  /// `attitude`
  String get attitude {
    return Intl.message(
      'attitude',
      name: 'attitude',
      desc: '',
      args: [],
    );
  }

  /// `beauty`
  String get beauty {
    return Intl.message(
      'beauty',
      name: 'beauty',
      desc: '',
      args: [],
    );
  }

  /// `best`
  String get best {
    return Intl.message(
      'best',
      name: 'best',
      desc: '',
      args: [],
    );
  }

  /// `birthday`
  String get birthday {
    return Intl.message(
      'birthday',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `business`
  String get business {
    return Intl.message(
      'business',
      name: 'business',
      desc: '',
      args: [],
    );
  }

  /// `car`
  String get car {
    return Intl.message(
      'car',
      name: 'car',
      desc: '',
      args: [],
    );
  }

  /// `change`
  String get change {
    return Intl.message(
      'change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `communication`
  String get communication {
    return Intl.message(
      'communication',
      name: 'communication',
      desc: '',
      args: [],
    );
  }

  /// `computers`
  String get computers {
    return Intl.message(
      'computers',
      name: 'computers',
      desc: '',
      args: [],
    );
  }

  /// `cool`
  String get cool {
    return Intl.message(
      'cool',
      name: 'cool',
      desc: '',
      args: [],
    );
  }

  /// `courage`
  String get courage {
    return Intl.message(
      'courage',
      name: 'courage',
      desc: '',
      args: [],
    );
  }

  /// `dad`
  String get dad {
    return Intl.message(
      'dad',
      name: 'dad',
      desc: '',
      args: [],
    );
  }

  /// `dating`
  String get dating {
    return Intl.message(
      'dating',
      name: 'dating',
      desc: '',
      args: [],
    );
  }

  /// `death`
  String get death {
    return Intl.message(
      'death',
      name: 'death',
      desc: '',
      args: [],
    );
  }

  /// `design`
  String get design {
    return Intl.message(
      'design',
      name: 'design',
      desc: '',
      args: [],
    );
  }

  /// `dreams`
  String get dreams {
    return Intl.message(
      'dreams',
      name: 'dreams',
      desc: '',
      args: [],
    );
  }

  /// `education`
  String get education {
    return Intl.message(
      'education',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `environmental`
  String get environmental {
    return Intl.message(
      'environmental',
      name: 'environmental',
      desc: '',
      args: [],
    );
  }

  /// `equality`
  String get equality {
    return Intl.message(
      'equality',
      name: 'equality',
      desc: '',
      args: [],
    );
  }

  /// `experience`
  String get experience {
    return Intl.message(
      'experience',
      name: 'experience',
      desc: '',
      args: [],
    );
  }

  /// `failure`
  String get failure {
    return Intl.message(
      'failure',
      name: 'failure',
      desc: '',
      args: [],
    );
  }

  /// `faith`
  String get faith {
    return Intl.message(
      'faith',
      name: 'faith',
      desc: '',
      args: [],
    );
  }

  /// `family`
  String get family {
    return Intl.message(
      'family',
      name: 'family',
      desc: '',
      args: [],
    );
  }

  /// `famous`
  String get famous {
    return Intl.message(
      'famous',
      name: 'famous',
      desc: '',
      args: [],
    );
  }

  /// `fear`
  String get fear {
    return Intl.message(
      'fear',
      name: 'fear',
      desc: '',
      args: [],
    );
  }

  /// `fitness`
  String get fitness {
    return Intl.message(
      'fitness',
      name: 'fitness',
      desc: '',
      args: [],
    );
  }

  /// `food`
  String get food {
    return Intl.message(
      'food',
      name: 'food',
      desc: '',
      args: [],
    );
  }

  /// `forgiveness`
  String get forgiveness {
    return Intl.message(
      'forgiveness',
      name: 'forgiveness',
      desc: '',
      args: [],
    );
  }

  /// `freedom`
  String get freedom {
    return Intl.message(
      'freedom',
      name: 'freedom',
      desc: '',
      args: [],
    );
  }

  /// `friendship`
  String get friendship {
    return Intl.message(
      'friendship',
      name: 'friendship',
      desc: '',
      args: [],
    );
  }

  /// `funny`
  String get funny {
    return Intl.message(
      'funny',
      name: 'funny',
      desc: '',
      args: [],
    );
  }

  /// `future`
  String get future {
    return Intl.message(
      'future',
      name: 'future',
      desc: '',
      args: [],
    );
  }

  /// `god`
  String get god {
    return Intl.message(
      'god',
      name: 'god',
      desc: '',
      args: [],
    );
  }

  /// `good`
  String get good {
    return Intl.message(
      'good',
      name: 'good',
      desc: '',
      args: [],
    );
  }

  /// `government`
  String get government {
    return Intl.message(
      'government',
      name: 'government',
      desc: '',
      args: [],
    );
  }

  /// `graduation`
  String get graduation {
    return Intl.message(
      'graduation',
      name: 'graduation',
      desc: '',
      args: [],
    );
  }

  /// `great`
  String get great {
    return Intl.message(
      'great',
      name: 'great',
      desc: '',
      args: [],
    );
  }

  /// `happiness`
  String get happiness {
    return Intl.message(
      'happiness',
      name: 'happiness',
      desc: '',
      args: [],
    );
  }

  /// `health`
  String get health {
    return Intl.message(
      'health',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `history`
  String get history {
    return Intl.message(
      'history',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `home`
  String get home {
    return Intl.message(
      'home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `hope`
  String get hope {
    return Intl.message(
      'hope',
      name: 'hope',
      desc: '',
      args: [],
    );
  }

  /// `humor`
  String get humor {
    return Intl.message(
      'humor',
      name: 'humor',
      desc: '',
      args: [],
    );
  }

  /// `imagination`
  String get imagination {
    return Intl.message(
      'imagination',
      name: 'imagination',
      desc: '',
      args: [],
    );
  }

  /// `inspirational`
  String get inspirational {
    return Intl.message(
      'inspirational',
      name: 'inspirational',
      desc: '',
      args: [],
    );
  }

  /// `intelligence`
  String get intelligence {
    return Intl.message(
      'intelligence',
      name: 'intelligence',
      desc: '',
      args: [],
    );
  }

  /// `jealousy`
  String get jealousy {
    return Intl.message(
      'jealousy',
      name: 'jealousy',
      desc: '',
      args: [],
    );
  }

  /// `knowledge`
  String get knowledge {
    return Intl.message(
      'knowledge',
      name: 'knowledge',
      desc: '',
      args: [],
    );
  }

  /// `leadership`
  String get leadership {
    return Intl.message(
      'leadership',
      name: 'leadership',
      desc: '',
      args: [],
    );
  }

  /// `learning`
  String get learning {
    return Intl.message(
      'learning',
      name: 'learning',
      desc: '',
      args: [],
    );
  }

  /// `legal`
  String get legal {
    return Intl.message(
      'legal',
      name: 'legal',
      desc: '',
      args: [],
    );
  }

  /// `life`
  String get life {
    return Intl.message(
      'life',
      name: 'life',
      desc: '',
      args: [],
    );
  }

  /// `love`
  String get love {
    return Intl.message(
      'love',
      name: 'love',
      desc: '',
      args: [],
    );
  }

  /// `marriage`
  String get marriage {
    return Intl.message(
      'marriage',
      name: 'marriage',
      desc: '',
      args: [],
    );
  }

  /// `medical`
  String get medical {
    return Intl.message(
      'medical',
      name: 'medical',
      desc: '',
      args: [],
    );
  }

  /// `men`
  String get men {
    return Intl.message(
      'men',
      name: 'men',
      desc: '',
      args: [],
    );
  }

  /// `mom`
  String get mom {
    return Intl.message(
      'mom',
      name: 'mom',
      desc: '',
      args: [],
    );
  }

  /// `money`
  String get money {
    return Intl.message(
      'money',
      name: 'money',
      desc: '',
      args: [],
    );
  }

  /// `morning`
  String get morning {
    return Intl.message(
      'morning',
      name: 'morning',
      desc: '',
      args: [],
    );
  }

  /// `movies`
  String get movies {
    return Intl.message(
      'movies',
      name: 'movies',
      desc: '',
      args: [],
    );
  }

  /// `success`
  String get success {
    return Intl.message(
      'success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Quotation`
  String get quotation {
    return Intl.message(
      'Quotation',
      name: 'quotation',
      desc: '',
      args: [],
    );
  }

  /// `The "Quote Book" application allows you to save and find inspirational quotes.`
  String get theQuoteBookApplicationAllowsYouToSaveAndFind {
    return Intl.message(
      'The "Quote Book" application allows you to save and find inspirational quotes.',
      name: 'theQuoteBookApplicationAllowsYouToSaveAndFind',
      desc: '',
      args: [],
    );
  }

  /// `Keep in touch with us through our social networks and channels:`
  String get keepInTouchWithUsThroughOurSocialNetworksAnd {
    return Intl.message(
      'Keep in touch with us through our social networks and channels:',
      name: 'keepInTouchWithUsThroughOurSocialNetworksAnd',
      desc: '',
      args: [],
    );
  }

  /// `Our resources:`
  String get ourResources {
    return Intl.message(
      'Our resources:',
      name: 'ourResources',
      desc: '',
      args: [],
    );
  }

  /// `Telegram channel`
  String get telegramChannel {
    return Intl.message(
      'Telegram channel',
      name: 'telegramChannel',
      desc: '',
      args: [],
    );
  }

  /// `RuTube channel`
  String get rutubeChannel {
    return Intl.message(
      'RuTube channel',
      name: 'rutubeChannel',
      desc: '',
      args: [],
    );
  }

  /// `YouTube channel`
  String get youtubeChannel {
    return Intl.message(
      'YouTube channel',
      name: 'youtubeChannel',
      desc: '',
      args: [],
    );
  }

  /// `VK community`
  String get vkCommunity {
    return Intl.message(
      'VK community',
      name: 'vkCommunity',
      desc: '',
      args: [],
    );
  }

  /// `About the app`
  String get aboutTheApp {
    return Intl.message(
      'About the app',
      name: 'aboutTheApp',
      desc: '',
      args: [],
    );
  }

  /// `The function is not available yet`
  String get theFunctionIsNotAvailableYet {
    return Intl.message(
      'The function is not available yet',
      name: 'theFunctionIsNotAvailableYet',
      desc: '',
      args: [],
    );
  }

  /// `Wait for the next update...`
  String get waitForTheNextUpdate {
    return Intl.message(
      'Wait for the next update...',
      name: 'waitForTheNextUpdate',
      desc: '',
      args: [],
    );
  }

  /// `Clearing the cache`
  String get clearingTheCache {
    return Intl.message(
      'Clearing the cache',
      name: 'clearingTheCache',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete all data from the cache?`
  String get deleteAllDataFromTheCache {
    return Intl.message(
      'Are you sure you want to delete all data from the cache?',
      name: 'deleteAllDataFromTheCache',
      desc: '',
      args: [],
    );
  }

  /// `Alright`
  String get alright {
    return Intl.message(
      'Alright',
      name: 'alright',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
