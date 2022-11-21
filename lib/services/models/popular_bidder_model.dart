import 'dart:ui';

import 'package:flutter/material.dart';

class PopularBidderModel {
  String image;
  String name;
  num rating;
  String job;
  Color color;

  PopularBidderModel({
    required this.image,
    required this.name,
    required this.rating,
    required this.job,
    required this.color,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['rating'] = rating;
    data['job'] = job;
    data['color'] = color;
    return data;
  }

  factory PopularBidderModel.fromJson(dynamic json) {
    return PopularBidderModel(
      image: json['image'] as String,
      name: json['name'] as String,
      rating: json['rating'] as num,
      job: json['job'] as String,
      color: json['color'] as Color,
    );
  }
}
