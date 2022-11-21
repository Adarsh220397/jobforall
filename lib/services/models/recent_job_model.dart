class RecentJobModel {
  String image;
  num rating;
  num duration;
  num cost;
  String job;
  String description;

  RecentJobModel({
    required this.image,
    required this.rating,
    required this.duration,
    required this.cost,
    required this.job,
    required this.description,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;

    data['rating'] = rating;
    data['duration'] = duration;
    data['description'] = description;
    data['cost'] = cost;
    data['job'] = job;
    return data;
  }

  factory RecentJobModel.fromJson(dynamic json) {
    return RecentJobModel(
      image: json['image'] as String,
      rating: json['rating'] as num,
      duration: json['duration'] as num,
      cost: json['cost'] as num,
      job: json['job'] as String,
      description: json['description'] as String,
    );
  }
}
