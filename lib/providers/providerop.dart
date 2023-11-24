
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:untitled/services/provider_service.dart';

import '../models/post_model.dart';

class ProviderOperation extends ChangeNotifier
{
  final service = ProviderService();
  bool isLoding=false;
  List<Post> _posts=[];
  List<Post> get posts => _posts;
  getAllPost() async {
    isLoding=true;
    notifyListeners();
    final res=await service.getAll();
     _posts =res;
     isLoding=false;
     notifyListeners();

  }






}