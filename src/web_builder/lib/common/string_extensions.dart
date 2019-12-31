extension StringExtention on String {
  String getRelativePath(int distanceFromRoot) {
    if (distanceFromRoot < 1) {
      return this;
    } else {
      String relativePrefix = '';
      for (int i = 0; i < distanceFromRoot; i++) {
        relativePrefix += '../';
      }
      return relativePrefix + this;
    }
  }
}
