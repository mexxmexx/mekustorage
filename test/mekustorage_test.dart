import 'package:flutter_test/flutter_test.dart';
import 'package:mekustorage/mekustorage.dart';
import 'package:mekustorage/mekustorage_platform_interface.dart';
import 'package:mekustorage/mekustorage_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMekustoragePlatform
    with MockPlatformInterfaceMixin
    implements MekustoragePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MekustoragePlatform initialPlatform = MekustoragePlatform.instance;

  test('$MethodChannelMekustorage is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMekustorage>());
  });

  test('getPlatformVersion', () async {
    Mekustorage mekustoragePlugin = Mekustorage();
    MockMekustoragePlatform fakePlatform = MockMekustoragePlatform();
    MekustoragePlatform.instance = fakePlatform;

    expect(await mekustoragePlugin.getPlatformVersion(), '42');
  });
}
