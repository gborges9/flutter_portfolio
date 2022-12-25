class Skill {
  final String name;
  final String imagePath;

  const Skill({required this.name, required this.imagePath});
}

class Skills {
  const Skills._();

  static const Skill java =
      Skill(name: "Java", imagePath: "assets/images/java.png");
  static const Skill kotlin =
      Skill(name: "Kotlin", imagePath: "assets/images/kotlin.png");
  static const Skill dart =
      Skill(name: "Dart", imagePath: "assets/images/dart.png");
  static const Skill python =
      Skill(name: "Python", imagePath: "assets/images/python.png");
  static const Skill androidDev = Skill(
      name: "Android Development", imagePath: "assets/images/android_dev.png");
  static const Skill flutterDev = Skill(
      name: "Android Development", imagePath: "assets/images/flutter_logo.png");
}
