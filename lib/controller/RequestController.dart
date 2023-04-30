import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/Request_model.dart';
class RequestController extends GetxController{
  RxList productData = [].obs;

  @override
  void onInit(){
    super.onInit();
    fatchData();
  }
  void fatchData()  {
    productData.assign(data(from: 'Kottayam', to: 'Chittoor' , pickupDate: '22-04-23', dropDate: '23-04-23', delivery: 'Pickup', purpose: 'Home'));
    debugPrint(productData[0].toString());
  }
}