import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mekustorage_platform_interface.dart';

/// An implementation of [MekustoragePlatform] that uses method channels.
class MethodChannelMekustorage extends MekustoragePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mekustorage');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
