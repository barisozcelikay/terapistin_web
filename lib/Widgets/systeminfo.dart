import 'dart:async';
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// System info class.
class SystemInfo {
  ///Developer name.
  static final String developerName = 'Berk Babadoğan';

// Is web browser or not.

  static bool _isWebBrowser = false;

// Is web browser or not - getter.
  static bool get isWebBrowser {
    return _isWebBrowser;
  }

  // Is mobile  browser or not.

  static bool _isMobileWebBrowser = false;

  // Is mobile  browser or not. - getter.
  static bool get isMobileWebBrowser {
    return _isMobileWebBrowser;
  }

  ///Device info plugin- flutter.
  static final DeviceInfoPlugin _device = DeviceInfoPlugin();

  //Package info class.
  static PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  /// Getter for package info.
  static PackageInfo get packageInfo {
    return _packageInfo;
  }

  ///Android info.
  static late AndroidDeviceInfo _androidInfo;

  ///Getter for Android info.
  static AndroidDeviceInfo get androidInfo {
    return _androidInfo;
  }

  ///iOS info.
  static late IosDeviceInfo _iosInfo;

  ///Getter for iOS info.
  static IosDeviceInfo get iOSInfo {
    return _iosInfo;
  }

// Web Info.
  static late WebBrowserInfo _webInfo;

  ///Getter for web info.
  static WebBrowserInfo get webInfo {
    return _webInfo;
  }

  /// Platform name.
  static String _platformName = 'Unknown'; // OS name.
  ///Getter for Platform name.
  static String get platformName {
    return _platformName;
  }

  /// Platform Version

  static String _platformVersion = 'Unknown';

  ///Getter for Platform version.
  static String get platformVersion {
    return _platformVersion;
  }

  ///Device name.
  static String _deviceName = 'Unknown';

  ///Getter for device name.
  static String get deviceName {
    return _deviceName;
  }

  ///Please run this function after first initialization. It initalizes the system info.
  static Future<void> initEnvironmentInfo() async {
    await Future.microtask(() async {
      try {
        _packageInfo = await PackageInfo.fromPlatform(); // App info.

        if (Platform.isAndroid) // Android
        {
          _androidInfo = await _device.androidInfo;
          _platformName = 'Android ' + _androidInfo.version.release!;
          _platformVersion = _androidInfo.version.release!;
          _deviceName = '${_androidInfo.manufacturer} ${_androidInfo.model!}';
        } else if (Platform.isIOS) // iOS || iPadOS
        {
          _iosInfo = await _device.iosInfo;
          _platformName = ' ${_iosInfo.systemName} ${_iosInfo.systemVersion!}';
          _platformVersion = _iosInfo.systemVersion!;
          _deviceName = _iosInfo.name!;
        } else if (Platform.isFuchsia) // Android successor Fuchsia

        {
          // Will be implemented.
        } else if (Platform.isLinux) // Linux

        {
          // Will be implemented..
        } else if (Platform.isMacOS) // macOS

        {
          // Will be implemented.
        } else if (Platform.isWindows) // Windows

        {
          // Will be implemented.
        } else // Web
        {
          _webInfo = await _device.webBrowserInfo;
          _deviceName = _webInfo.appName!;
          _platformName = _webInfo.userAgent!;
          _platformVersion = _webInfo.appVersion!;
          _isWebBrowser = true;
          _isMobileWebBrowser = (_platformName.contains('iPhone') &&
                      !_platformName.contains('iPad')) ||
                  (_platformName.contains('Android') &&
                          _platformName.contains('Mobile')) ==
                      true
              ? true
              : false;
        }
      } catch (e) {
        // print('$e - Will be a web browser.');
        _webInfo = await _device.webBrowserInfo;
        _deviceName = 'Web Browser - ${webInfo.platform}';
        _platformName = _webInfo.userAgent!;
        _platformVersion = _webInfo.appVersion!;
        _isWebBrowser = true;
        _isMobileWebBrowser = (_platformName.contains('iPhone') &&
                    !_platformName.contains('iPad')) ||
                (_platformName.contains('Android') &&
                        _platformName.contains('Mobile')) ==
                    true
            ? true
            : false;
      }
      print(
          'Platform: $_platformName -- Device: $_deviceName -- Version: $_platformVersion');
    });
  }
}
