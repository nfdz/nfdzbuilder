import 'dart:io';

import 'package:meta/meta.dart';
import 'package:web_builder/common/constans.dart';
import 'common/file_extensions.dart';

import 'foundation/web/web_site.dart';

class WebBuilder {
  final WebSite website;
  final String assetsInputPath;
  final String assetsOutputPath;
  final String outputPath;

  WebBuilder({
    @required this.website,
    this.assetsInputPath = kDefaultAssetsPath,
    this.assetsOutputPath = kDefaultAssetsPath,
    this.outputPath = kDefaultOutputPath,
  });

  void build() {
    _clearOutputFolder();
    _copyAssetsToOutput();
    final output = website.build();
    _createOutputFiles(output);
  }

  void _copyAssetsToOutput() {
    final inputDir = Directory(assetsInputPath);
    final inputDirFiles = inputDir?.existsSync() == true
        ? inputDir.listSync(recursive: true, followLinks: false)
        : null;
    final assetsOutputFullPath = outputPath + assetsOutputPath;
    Directory(assetsOutputFullPath).createSync(recursive: true);
    inputDirFiles?.forEach((entity) {
      File assetFile = File(entity.path);
      if (assetFile.existsSync()) {
        assetFile.copySync(assetsOutputFullPath + assetFile.name);
      }
    });
  }

  void _clearOutputFolder() {
    final outputDir = Directory(outputPath);
    if (outputDir.existsSync()) {
      outputDir.deleteSync(recursive: true);
    }
  }

  void _createOutputFiles(Map<String, String> outputMap) {
    outputMap?.forEach((filePath, fileContent) =>
        File(outputPath + filePath).writeAsStringSync(fileContent));
  }
}
