import 'package:flutter/material.dart';
import 'package:random/helper/api_service.dart';
import 'package:random/model/random_model.dart';

import 'package:flutter/material.dart';
import 'dart:convert';


class RandomProvider extends ChangeNotifier {
  UserModel? data;
  bool isLoading = true;


  ApiProvider() {
    getData();
  }

  getData() async {
    isLoading = true;
    notifyListeners();
    String? json = await RandomService().apiCalling();
    if (json != null) {
      data = jsonDecode(json);
    } else {
      print("Failed to fetch data");
    }
    isLoading = false;
    notifyListeners();
  }


}
