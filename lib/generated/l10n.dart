// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final String name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S();
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get appName {
    return Intl.message(
      'BlendTV',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  String get orLoginWith {
    return Intl.message(
      'Or log in with',
      name: 'orLoginWith',
      desc: '',
      args: [],
    );
  }

  String get login_content1 {
    return Intl.message(
      'Do not have an account? So let\'s ',
      name: 'login_content1',
      desc: '',
      args: [],
    );
  }

  String get login_content2 {
    return Intl.message(
      ' right away',
      name: 'login_content2',
      desc: '',
      args: [],
    );
  }

  String get login_title {
    return Intl.message(
      'Username',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  String get login_username {
    return Intl.message(
      'Username',
      name: 'login_username',
      desc: '',
      args: [],
    );
  }

  String get login_password {
    return Intl.message(
      'Password',
      name: 'login_password',
      desc: '',
      args: [],
    );
  }

  String get login_confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'login_confirm_password',
      desc: '',
      args: [],
    );
  }

  String get register_content1 {
    return Intl.message(
      'Do you already have an account? So please ',
      name: 'register_content1',
      desc: '',
      args: [],
    );
  }

  String get register_content2 {
    return Intl.message(
      ' okay',
      name: 'register_content2',
      desc: '',
      args: [],
    );
  }

  String get register_complete {
    return Intl.message(
      'Registration successful',
      name: 'register_complete',
      desc: '',
      args: [],
    );
  }

  String get register_content {
    return Intl.message(
      'Thank you for taking the time to register for an account with Werry. Now start the experience!',
      name: 'register_content',
      desc: '',
      args: [],
    );
  }

  String get fontAvenirNext {
    return Intl.message(
      'AvenirNext',
      name: 'fontAvenirNext',
      desc: '',
      args: [],
    );
  }

  String get actionConfirm {
    return Intl.message(
      'Confirm',
      name: 'actionConfirm',
      desc: '',
      args: [],
    );
  }

  String get actionCancel {
    return Intl.message(
      'Cancel',
      name: 'actionCancel',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageError {
    return Intl.message(
      'Load Failed',
      name: 'viewStateMessageError',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageNetworkError {
    return Intl.message(
      'Load Failed,Check network ',
      name: 'viewStateMessageNetworkError',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageEmpty {
    return Intl.message(
      'Nothing Found',
      name: 'viewStateMessageEmpty',
      desc: '',
      args: [],
    );
  }

  String get viewStateMessageUnAuth {
    return Intl.message(
      'Not sign in yet',
      name: 'viewStateMessageUnAuth',
      desc: '',
      args: [],
    );
  }

  String get viewStateButtonRefresh {
    return Intl.message(
      'Refresh',
      name: 'viewStateButtonRefresh',
      desc: '',
      args: [],
    );
  }

  String get viewStateButtonRetry {
    return Intl.message(
      'Retry',
      name: 'viewStateButtonRetry',
      desc: '',
      args: [],
    );
  }

  String get viewStateButtonLogin {
    return Intl.message(
      'Sign In',
      name: 'viewStateButtonLogin',
      desc: '',
      args: [],
    );
  }

  String get refreshTwoLevel {
    return Intl.message(
      'release to enter second floor',
      name: 'refreshTwoLevel',
      desc: '',
      args: [],
    );
  }

  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  String get splashSkip {
    return Intl.message(
      'Skip',
      name: 'splashSkip',
      desc: '',
      args: [],
    );
  }

  String get setting {
    return Intl.message(
      'Setting',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  String get settingLanguage {
    return Intl.message(
      'Language',
      name: 'settingLanguage',
      desc: '',
      args: [],
    );
  }

  String get settingFont {
    return Intl.message(
      'System Font',
      name: 'settingFont',
      desc: '',
      args: [],
    );
  }

  String get logout {
    return Intl.message(
      'Sign Out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  String get darkMode {
    return Intl.message(
      'Dark Mode',
      name: 'darkMode',
      desc: '',
      args: [],
    );
  }

  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  String get needLogin {
    return Intl.message(
      'NeedLogin',
      name: 'needLogin',
      desc: '',
      args: [],
    );
  }

  String get feedback {
    return Intl.message(
      'FeedBack',
      name: 'feedback',
      desc: '',
      args: [],
    );
  }

  String get autoBySystem {
    return Intl.message(
      'Auto',
      name: 'autoBySystem',
      desc: '',
      args: [],
    );
  }

  String get fieldNotNull {
    return Intl.message(
      'not empty',
      name: 'fieldNotNull',
      desc: '',
      args: [],
    );
  }

  String get noAccount {
    return Intl.message(
      'No Account ? ',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  String get homeShows {
    return Intl.message(
      'Shows',
      name: 'homeShows',
      desc: '',
      args: [],
    );
  }

  String get homeMovies {
    return Intl.message(
      'Movies',
      name: 'homeMovies',
      desc: '',
      args: [],
    );
  }

  String get homeTVGuide {
    return Intl.message(
      'TV Guide',
      name: 'homeTVGuide',
      desc: '',
      args: [],
    );
  }

  String get homeRecordings {
    return Intl.message(
      'Recordings',
      name: 'homeRecordings',
      desc: '',
      args: [],
    );
  }

  String get homeParental {
    return Intl.message(
      'Parental Control',
      name: 'homeParental',
      desc: '',
      args: [],
    );
  }

  String get homeWatchlist {
    return Intl.message(
      'Your Watchlist',
      name: 'homeWatchlist',
      desc: '',
      args: [],
    );
  }

  String get homePackages {
    return Intl.message(
      'Packages',
      name: 'homePackages',
      desc: '',
      args: [],
    );
  }

  String get homeChannel {
    return Intl.message(
      'Channel List',
      name: 'homeChannel',
      desc: '',
      args: [],
    );
  }

  String get homeLogin {
    return Intl.message(
      'Login',
      name: 'homeLogin',
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
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}