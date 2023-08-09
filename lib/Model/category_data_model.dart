import 'dart:typed_data';

class CategoryModel {
  int? id;
  String category_name;
  Uint8List category_image;

  CategoryModel({
    this.id,
    required this.category_name,
    required this.category_image,
  });
}
