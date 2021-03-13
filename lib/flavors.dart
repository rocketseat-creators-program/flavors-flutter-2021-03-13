import 'package:flutter/material.dart';

enum Flavor { dev, prod, qa, hom }

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Production';
      case Flavor.qa:
        return 'Quality';
      case Flavor.hom:
        return 'Homologation';
      case Flavor.dev:
      default:
        return 'Development';
    }
  }

  static bool get isDev => appFlavor == Flavor.dev;
  static bool get isProd => appFlavor == Flavor.prod;
  static bool get isQa => appFlavor == Flavor.qa;
  static bool get isHom => appFlavor == Flavor.hom;

  static Color get getColor {
    switch (appFlavor) {
      case Flavor.prod:
        return Colors.purple;
      case Flavor.qa:
        return Colors.green;
      case Flavor.hom:
        return Colors.red;
      case Flavor.dev:
      default:
        return Colors.yellow;
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.prod:
        return 'https://api.flutter.flavor.com.br/';
      case Flavor.qa:
        return 'https://api.flutter.flavor-qa.com.br/';
      case Flavor.hom:
        return 'https://api.flutter.flavor-hom.com.br/';
      case Flavor.dev:
      default:
        return 'https://api.flutter.flavor-dev.com.br/';
    }
  }
}