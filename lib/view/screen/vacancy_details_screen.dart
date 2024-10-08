import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:unhcr/controller/vacancy_controller.dart';
import 'package:unhcr/core/constant/color.dart';
import 'package:unhcr/view/widget/loading/loading_skelton_vacancy_details.dart';
import 'package:unhcr/view/widget/vacancy_details/custom_image_details.dart';
import 'package:unhcr/view/widget/vacancy_details/custom_text_details.dart';
import '../../model/vacancy_model_map.dart';


class VacancyDetailsScreen extends StatelessWidget {
  const VacancyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VacancyController vacancyController = Get.put(VacancyController());
    var arguments = Get.arguments;
    var jobId = arguments != null ? arguments['jobId'] : null;
    VacancyModel? selectedVacancy = vacancyController.vacancyList.firstWhere(
          (vacancy) => vacancy.jobId == jobId,
      orElse: () {
        return null!;
      }
    );
    if (selectedVacancy == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('No Details Available'),
        ),
        body: Center(child: Text('Job with this ID not found')),
      );
    }
    
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColor.focusColor),
        backgroundColor: AppColor.backGroundColor,
        title: Text('Vacancy Details',style: Theme.of(context).textTheme.titleLarge,),
        centerTitle: true,
        elevation: 0,
      ),
      body: Obx(() {
        if (vacancyController.isLoading.value) {
          return const LoadingSkeltonVacancyDetails();
        } else {
          return Padding(
            padding:  EdgeInsets.all(14.r),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Padding(
                padding:  EdgeInsets.all(14.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageDetails(imageDetails: selectedVacancy.imageUrl!),
                    SizedBox(height: 30.h),
                    CustomTextDetails(title: 'Job ID:', desc: selectedVacancy.jobId!,style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 14.sp
                    ),),
                    SizedBox(height: 10.h),
                    CustomTextDetails(title: 'Title:', desc: selectedVacancy.title!,style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 14.sp
                    ),),
                    SizedBox(height: 10.h),
                    CustomTextDetails(title: 'Company:', desc: selectedVacancy.company!,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.focusColor,
                        fontSize: 14.sp
                    ),),
                    SizedBox(height: 10.h),
                    CustomTextDetails(title: 'Location:', desc: selectedVacancy.location!,style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.focusColor,
                        fontSize: 14.sp
                    ),),
                    SizedBox(height: 2.h),
                    const Divider(thickness: 2,),
                    SizedBox(height: 3.h),
                    CustomTextDetails(title:'Description:',desc: '', style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 13.sp
                    ),),
                    CustomTextDetails(title:'',desc:selectedVacancy.description!, style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp
                    )),
                    SizedBox(height: 20.h),
                    CustomTextDetails(title:'Long Description:',desc: '',style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 13.sp
                    ),),
                    CustomTextDetails(title:'',desc:selectedVacancy.longDescription!,style:Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12.sp
                    ),),
                    SizedBox(height: 2.h),
                    const Divider(thickness: 2,),
                    SizedBox(height: 2.h),
                    CustomTextDetails(title:'Salary:' , desc: selectedVacancy.salary!,style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 13.sp
                    ),),
                    SizedBox(height: 10.h),
                    CustomTextDetails(title:'Date Posted' , desc: selectedVacancy.datePosted!,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColor.focusColor
                    )),
                  ],
                ),
              ),
            ),
          );
        }
      }
      ),
    );
  }
}
