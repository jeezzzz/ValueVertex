import 'package:flutter/material.dart';
import 'package:value_vertex/Models/home_model.dart';
import 'package:value_vertex/service/api_service.dart';

class HomeProvider extends ChangeNotifier {
  Home? home;

  Future<void> fetchHomeData() async {
    try {
      home = await ApiService.fetchHomeData();
      notifyListeners();
    } catch (e) {
      print('Error fetching home data: $e');
    }
  }
}
