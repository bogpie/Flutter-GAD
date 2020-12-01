// File created by
// Lung Razvan <long1eu>
// on 15/11/2019

import 'dart:async';
import 'dart:io';

import '../run_command.dart';

Future<void> main(List<String> arguments) async {
  bool assertsEnabled = false;
  assert(() {
    assertsEnabled = true;
    return true;
  }(), '');
  if (!assertsEnabled) {
    print('The analyze.dart script must be run with --enable-asserts.');
    exit(1);
  }

  await _runFlutterAnalyze(rootDir.path);

  print('${bold}DONE: Analysis successful.$reset');
}

Future<void> _runFlutterAnalyze(
  String workingDirectory, {
  List<String> options = const <String>[],
}) {
  return runCommand(
    'flutter',
    <String>['analyze', ...options],
    workingDirectory: workingDirectory,
  );
}
