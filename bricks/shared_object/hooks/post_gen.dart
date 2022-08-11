import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final finish = context.logger.progress('Rebuilding Json');
  await Process.run(
    'dart',
    ['run', 'build_runner', 'build', '--delete-conflicting-outputs'],
    runInShell: true,
  );
  await Process.run(
    'dart',
    ['fix', '--apply'],
    runInShell: true,
  );

  finish.complete();
}
