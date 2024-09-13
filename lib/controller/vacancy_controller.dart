import 'dart:convert';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:unhcr/model/vacancy_model_map.dart';

class VacancyController extends GetxController{
  RxList<VacancyModel> vacancyList = <VacancyModel>[].obs;
  Rx<bool> isLoading = true.obs;
  
 var context = Get.context;
  String url = 'https://www.unhcrjo.org/jobs/api';

  functionGetDataVacancy() async {
    isLoading.value = true;
    try{
      var response = await http.get(Uri.parse(url));
      var responseBody = jsonDecode(response.body);
      if(response.statusCode == 200){
      vacancyList.value =  (responseBody as List)
          .map((json) => VacancyModel.fromJson(json))
          .toList();
      print('responseBody $responseBody');
      }else{
      showError(context!, 'Sorry, we could not retrieve the data. Please try again later.');
      }
    }
    catch(ex){
      showError(context!, 'An unexpected error occurred while trying to connect. Please check your internet connection and try again.');
    }
    finally{
      isLoading.value = false;
    }
  }
  @override
  void onInit() {
    functionGetDataVacancy();
    super.onInit();
  }

  showError(BuildContext context , String desc){
    AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      headerAnimationLoop: false,
      animType: AnimType.topSlide,
      showCloseIcon: true,
      closeIcon: const Icon(Icons.close_fullscreen_outlined),
      title: 'Sorry',
      desc: desc,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }
}
