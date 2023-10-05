import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mekustorage_method_channel.dart';

abstract class MekustoragePlatform extends PlatformInterface {
  /// Constructs a MekustoragePlatform.
  MekustoragePlatform() : super(token: _token);

  static final Object _token = Object();

  static MekustoragePlatform _instance = MethodChannelMekustorage();

  /// The default instance of [MekustoragePlatform] to use.
  ///
  /// Defaults to [MethodChannelMekustorage].
  static MekustoragePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MekustoragePlatform] when
  /// they register themselves.
  static set instance(MekustoragePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
