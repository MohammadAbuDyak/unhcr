import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class LoadingSkeletonVacancyList extends StatelessWidget {
  const LoadingSkeletonVacancyList({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
        separatorBuilder: (context,i)=>SizedBox(height: 20.h),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 7,
        itemBuilder: (ctx,i)=>Container(
          margin: EdgeInsets.only(top: 45.r),
          child: SkeletonLoader(
              baseColor: Colors.grey,
              builder: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       CircleAvatar(radius: 18.r),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 10.h,
                            width: 100.w,
                            color: Colors.grey[300],
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            height: 10.h,
                            width: 30.w,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    height: 80.h,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                  Container(
                    height: 5.h,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    height: 5.h,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    height: 20.h,
                    width: 100.w,
                    color: Colors.grey[300],
                  ),
                ],
              )),
        ));
  }
}
