import 'dart:io';

import 'package:conduit/conduit.dart';
import 'package:dart_application_1/Api.dart';

void main() async {
  final port = int.parse(Platform.environment["POST"] ?? '8082');

  final service = Application<AppService>()
    ..options.port = port
    ..options.configurationFilePath = 'config.yaml';
  await service.start(numberOfInstances: 3, consoleLogging: true);
}
