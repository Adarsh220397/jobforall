class AllCategoryModel {
  String image;
  String title;

  AllCategoryModel({
    required this.image,
    required this.title,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['title'] = title;

    return data;
  }

  factory AllCategoryModel.fromJson(dynamic json) {
    return AllCategoryModel(
      image: json['image'] as String,
      title: json['title'] as String,
    );
  }
}
