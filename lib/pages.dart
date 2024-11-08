// pages.dart

import 'package:flutter/material.dart';
import 'android_utils.dart';
import 'ios_utils.dart';
import 'desktop_utils.dart';
import 'web_utils.dart';
import 'unknown_platform_page.dart';
import 'platform_utils.dart';

Widget buildPlatformDependentPage() {
  String platformType = getPlatformType();

  switch (platformType) {
    case 'Android':
      return AndroidPageContent();
    case 'iOS':
      return IOSPageContent();
    case 'Windows':
    case 'MacOS':
    case 'Linux':
      return DesktopPageContent();
    case 'Web':
      return WebPageContent();
    default:
      return UnknownPlatformPage();
  }
}
