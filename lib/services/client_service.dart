import 'package:flutter/material.dart';
import 'package:job_for_all/services/models/category_model.dart';
import 'package:job_for_all/services/models/job_match_data_model.dart';
import 'package:job_for_all/services/models/popular_bidder_model.dart';
import 'package:job_for_all/services/models/recent_job_model.dart';

class ClientService {
  ClientService._internal();
  static ClientService instance = ClientService._internal();

  Future<List<AllCategoryModel>> getCategoriesData() async {
    List<AllCategoryModel> categoriesList = [
      AllCategoryModel(image: 'assets/imgs/handyman.png', title: 'Handy Man'),
      AllCategoryModel(image: 'assets/imgs/mechanic.png', title: 'Mechanic'),
      AllCategoryModel(image: 'assets/imgs/towing.png', title: 'Towing'),
      AllCategoryModel(image: 'assets/imgs/lawn.png', title: 'Lawn'),
      AllCategoryModel(
          image: 'assets/imgs/babysitting.png', title: 'Baby Sitting'),
      AllCategoryModel(
          image: 'assets/imgs/petsitting.png', title: 'Pet Sitting'),
      AllCategoryModel(
          image: 'assets/imgs/housesitting.png', title: 'House Sitting'),
      AllCategoryModel(image: 'assets/imgs/food.png', title: 'Food'),
    ];

    return categoriesList;
  }

  Future<List<PopularBidderModel>> getPopularBidderData() async {
    List<PopularBidderModel> popularBidderList = [
      PopularBidderModel(
          image: 'assets/imgs/lawrence.png',
          job: 'Painter',
          name: 'Lawrence Smith',
          rating: 4.5,
          color: Color.fromRGBO(52, 158, 114, 1)),
      PopularBidderModel(
          image: 'assets/imgs/stephen.png',
          job: 'Plumber',
          name: 'Stephen',
          rating: 4.4,
          color: Color.fromRGBO(156, 159, 12, 1)),
      PopularBidderModel(
          image: 'assets/imgs/kirankumar.png',
          job: 'Carpenter',
          name: 'Kiran Kumar',
          rating: 4.1,
          color: Color.fromRGBO(10, 131, 199, 1)),
      PopularBidderModel(
          image: 'assets/imgs/simonyard.png',
          job: 'Cleaner',
          name: 'Simon Yard',
          rating: 4.3,
          color: Color.fromRGBO(201, 100, 7, 1)),
    ];

    return popularBidderList;
  }

  Future<List<RecentJobModel>> getRecentJobsData() async {
    List<RecentJobModel> recentJobsList = [
      RecentJobModel(
        cost: 110,
        description: 'Kitchen needs to clean and change',
        duration: 3,
        image: 'assets/imgs/plumbingwork.png',
        job: 'Plumbing Work',
        rating: 10,
      ),
      RecentJobModel(
        cost: 230,
        description: 'Kitchen needs to clean and change',
        duration: 3,
        image: 'assets/imgs/homecleaning.png',
        job: 'Home Cleaning',
        rating: 10,
      ),
      RecentJobModel(
        cost: 98,
        description: 'Kitchen needs to clean and change',
        duration: 3,
        image: 'assets/imgs/paintingwork.png',
        job: 'Painting Work',
        rating: 10,
      ),
    ];
    return recentJobsList;
  }

  Future<List<JobMatchesDataModel>> getJobsMatchingData() async {
    List<JobMatchesDataModel> jobList = [
      JobMatchesDataModel(
          cost: 20,
          description: 'Lorem ipsum dolor sit amit,consectiturer..',
          image: 'assets/imgs/waterheaterservices.png',
          job: 'Water heater services',
          likes: 35,
          views: 90),
      JobMatchesDataModel(
          cost: 25,
          description: 'Lorem ipsum dolor sit amit,consectiturer..',
          image: 'assets/imgs/toiletplumbing.png',
          job: 'Toilet plumbing',
          likes: 15,
          views: 40),
      JobMatchesDataModel(
          cost: 10,
          description: 'Lorem ipsum dolor sit amit,consectiturer..',
          image: 'assets/imgs/sumppumpservices.png',
          job: 'Sump pump services',
          likes: 32,
          views: 20),
      JobMatchesDataModel(
          cost: 45,
          description: 'Lorem ipsum dolor sit amit,consectiturer..',
          image: 'assets/imgs/pipingorleakingservices.png',
          job: 'Piping/leak services',
          likes: 36,
          views: 70),
    ];
    return jobList;
  }
}
