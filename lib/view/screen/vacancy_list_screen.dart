import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:unhcr/controller/vacancy_controller.dart';
import 'package:unhcr/core/constant/color.dart';
import 'package:unhcr/core/constant/routes.dart';
import 'package:unhcr/model/vacancy_model_map.dart';
import 'package:unhcr/view/widget/loading/loading_skeleton_vacancy_list.dart';
import 'package:unhcr/view/widget/vacancy_list_screen/custom_company_name.dart';
import 'package:unhcr/view/widget/vacancy_list_screen/custom_desc.dart';
import 'package:unhcr/view/widget/vacancy_list_screen/custom_image_title_date.dart';

class VacancyListScreen extends StatelessWidget {
  const VacancyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VacancyController vacancyController = Get.put(VacancyController());
    VacancyModel vacancyModel = VacancyModel();
    return Scaffold(
        backgroundColor: AppColor.backGroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backGroundColor,
          elevation: 0,
          title: Text(
            'UNHCR',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
        ),
        body: Obx(
          () {
            if (vacancyController.isLoading.value) {
              return LoadingSkeletonVacancyList();
            } else if (vacancyController.vacancyList.isEmpty) {
              return const Center(
                child: Text('No Data',style: TextStyle(fontWeight: FontWeight.bold),),
              );
            } else {
              return Container(
                margin: EdgeInsets.only(top: 15.h),
                child: ListView.separated(
                  itemCount: vacancyController.vacancyList.length,
                  separatorBuilder: (context, index) =>
                      SizedBox(height: 10.h),
                  itemBuilder: (context, index) {
                    var vacancy = vacancyController.vacancyList[index];
                    return InkWell(
                      onTap: () async {
                        var jobId = vacancy.jobId;
                        if (jobId != null) {
                          Get.toNamed(
                            AppRoutes.vacancyDetailsScreen,
                            arguments: {'jobId': jobId},
                          );
                          await vacancyController.functionGetDataVacancy();
                        } else {
                          print('Job ID is null');
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageTitleDate(
                                image: vacancy.imageUrl!,
                                title: vacancy.title!,
                                date: vacancy.datePosted!),
                            SizedBox(height: 15.h),
                            CustomDesc(desc: vacancy.description!),
                            SizedBox(height: 15.h),
                            const Divider(
                              thickness: 2,
                            ),
                            SizedBox(height: 15.h),
                            CustomCompanyName(companyName: vacancy.company!),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }
          },
        ));
  }
}
