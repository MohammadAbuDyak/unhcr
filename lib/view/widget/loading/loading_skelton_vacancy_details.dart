import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class LoadingSkeltonVacancyDetails extends StatelessWidget {
  const LoadingSkeltonVacancyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SkeletonLoader(
      baseColor: Colors.grey,
      builder: Padding(
        padding:  EdgeInsets.all(16.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(48.r),
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  color: Colors.grey[300],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Container(
              height: 20.h,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            SizedBox(height: 10.h),
            Container(
              height: 20.h,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            SizedBox(height: 10.h),
            Container(
              height: 20.h,
              width: 150.w,
              color: Colors.grey[300],
            ),
            SizedBox(height: 10.h),
            Container(
              height: 20.h,
              width: 150.w,
              color: Colors.grey[300],
            ),
            SizedBox(height: 20.h),
            const Divider(),
            SizedBox(height: 20.h),
            Container(
              height: 50.h,
              width: double.infinity,
              color: Colors.grey[300],
            ),
            SizedBox(height: 20.h),
            const Divider(),
            SizedBox(height: 20.h),
            Container(
              height: 20.h,
              width: 100.w,
              color: Colors.grey[300],
            ),
            SizedBox(height: 10.h),
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
