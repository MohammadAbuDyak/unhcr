import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

import '../../../core/constant/media_query.dart';

class LoadingSkeletonVacancyList extends StatelessWidget {
  const LoadingSkeletonVacancyList({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
        separatorBuilder: (context,i)=>SizedBox(height: AppMediaQuery.height*0.02),
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
                      const CircleAvatar(),
                      SizedBox(width: AppMediaQuery.width*0.002),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 10.h,
                            width: 100.w,
                            color: Colors.grey[300],
                          ),
                          SizedBox(height: AppMediaQuery.height*0.01),
                          Container(
                            height: 10.h,
                            width: 30.w,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: AppMediaQuery.height*0.04),
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
                  SizedBox(height: AppMediaQuery.height*0.015),
                  Container(
                    height: 5.h,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                  SizedBox(height: AppMediaQuery.height*0.015),
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
