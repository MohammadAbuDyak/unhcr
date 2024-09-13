import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeleton_loader/skeleton_loader.dart';
import 'package:unhcr/core/constant/media_query.dart';

class LoadingSkeltonVacancyDetails extends StatelessWidget {
  const LoadingSkeltonVacancyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SkeletonLoader(
      baseColor: Colors.grey,
      builder: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  color: Colors.grey[300],
                ),
              ),
            ),
            SizedBox(height: AppMediaQuery.height * 0.02),
            // Skeleton لـ Job ID
            Container(
              height: 20.h,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            SizedBox(height:  AppMediaQuery.height * 0.01),
            // Skeleton لـ Title
            Container(
              height: 20.h,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            SizedBox(height:  AppMediaQuery.height * 0.01),
            // Skeleton لـ Company
            Container(
              height: 20.h,
              width: 150.w,
              color: Colors.grey[300],
            ),
            SizedBox(height:  AppMediaQuery.height * 0.01),
            // Skeleton لـ Location
            Container(
              height: 20.h,
              width: 150.w,
              color: Colors.grey[300],
            ),
            SizedBox(height:  AppMediaQuery.height * 0.02),
            const Divider(),
            SizedBox(height:  AppMediaQuery.height * 0.02),
            // Skeleton لـ Description
            Container(
              height: 50.w,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            SizedBox(height:  AppMediaQuery.height * 0.02),
            const Divider(),
            SizedBox(height:  AppMediaQuery.height * 0.02),
            // Skeleton لـ Salary
            Container(
              height: 20.h,
              width: 100.w,
              color: Colors.grey[300],
            ),
            SizedBox(height:  AppMediaQuery.height * 0.01),
            Container(
              height: 20.h,
              width: 150.w,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
