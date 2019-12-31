import 'dart:io';

import 'package:meta/meta.dart';
import 'package:web_builder/common/constans.dart';

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
    final inputDir = Directory(assetsInputPath)
        .listSync(recursive: true, followLinks: false);
    final assetsOutputFullPath = outputPath + assetsOutputPath;
    inputDir?.forEach((entity) {
      File assetFile = File(entity.path);
      if (assetFile.existsSync()) {
        assetFile.copySync(assetsOutputFullPath);
      }
    });
  }

  void _clearOutputFolder() => Directory(outputPath).deleteSync();

  void _createOutputFiles(Map<String, String> outputMap) {
    outputMap?.forEach((filePath, fileContent) =>
        File(outputPath + filePath).writeAsStringSync(fileContent));
  }
}
