import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageDetails extends StatelessWidget {
  final String imageDetails;
  const CustomImageDetails({super.key, required this.imageDetails});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50.r),
        child: CircleAvatar(
          backgroundImage: NetworkImage(imageDetails),
          radius: 40.r,
        ),
      ),
    );
  }
}
