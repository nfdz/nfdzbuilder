extension StringExtention on String {
  String getRelativePath(int distanceFromRoot, String path) {
    if (distanceFromRoot < 1) {
      return path;
    } else {
      String relativePrefix = '';
      for (int i = 0; i < distanceFromRoot; i++) {
        relativePrefix += '../';
      }
      return relativePrefix + path;
    }
  }
}
