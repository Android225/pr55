// platform_utils.dart

import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

String getPlatformType() {
  if (kIsWeb) {
    return 'Web';
  } else if (Platform.isAndroid) {
    return 'Android';
  } else if (Platform.isIOS) {
    return 'iOS';
  } else if (Platform.isWindows) {
    return 'Windows';
  } else if (Platform.isMacOS) {
    return 'MacOS';
  } else if (Platform.isLinux) {
    return 'Linux';
  }
  return 'Unknown';
}
