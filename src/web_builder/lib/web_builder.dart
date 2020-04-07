import 'dart:convert';
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
    final assetsOutputFullPath = outputPath + assetsOutputPath;
    Directory(assetsOutputFullPath).createSync(recursive: true);
    _copyAllFilesInDirectory(inputDir, assetsOutputFullPath);
  }

  void _copyAllFilesInDirectory(Directory directory, String destinationPath) {
    final dirFiles = directory?.existsSync() == true
        ? directory.listSync(recursive: false, followLinks: false)
        : null;
    dirFiles?.forEach((entity) {
      final childDirectory = Directory(entity.path);
      final isDirectory = childDirectory?.existsSync() == true;
      if (isDirectory) {
        String recursiveDestinationPath =
            destinationPath + childDirectory.name + Platform.pathSeparator;
        Directory(recursiveDestinationPath).createSync(recursive: true);
        _copyAllFilesInDirectory(childDirectory, recursiveDestinationPath);
      } else {
        File assetFile = File(entity.path);
        if (assetFile.existsSync()) {
          assetFile.copySync(destinationPath + assetFile.name);
        }
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
    outputMap?.forEach((filePath, fileContent) {
      final outputFile = File(outputPath + filePath);
      outputFile.createSync(recursive: true);
      outputFile.writeAsStringSync(fileContent,
          encoding: Encoding.getByName("UTF-8"));
    });
  }
}
