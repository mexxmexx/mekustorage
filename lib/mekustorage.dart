
import 'mekustorage_platform_interface.dart';

class Mekustorage {
  Future<String?> getPlatformVersion() {
    return MekustoragePlatform.instance.getPlatformVersion();
  }
}
