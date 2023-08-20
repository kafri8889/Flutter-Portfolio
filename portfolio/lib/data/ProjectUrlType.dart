
enum ProjectUrlType {
  gitHub,
  playStore;

  String get name {
    if (this == ProjectUrlType.gitHub) {
      return "GitHub";
    } else if (this == ProjectUrlType.playStore) {
      return "Play Store";
    }
    return ""; // Default value
  }

}