import 'package:get/get.dart';
import 'package:unhcr/core/constant/routes.dart';
import 'package:unhcr/view/screen/vacancy_details_screen.dart';
import 'package:unhcr/view/screen/vacancy_list_screen.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: AppRoutes.vacancyListScreen, page: ()=>const VacancyListScreen(),transition: Transition.cupertino,transitionDuration: Duration(milliseconds: 500),),
  GetPage(name: AppRoutes.vacancyDetailsScreen, page: ()=>const VacancyDetailsScreen(),transition: Transition.leftToRight,transitionDuration: Duration(milliseconds: 500),)
];