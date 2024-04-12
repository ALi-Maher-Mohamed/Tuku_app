// ignore_for_file: camel_case_types, file_names

class itemModel {
  final String sound;
  final String enName;
  final String jpName;
  final String? image;
  const itemModel(
      {required this.sound,
       this.image,
      required this.jpName,
      required this.enName});
}
