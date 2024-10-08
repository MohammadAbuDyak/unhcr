import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageTitleDate extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  const CustomImageTitleDate({super.key, required this.image, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(image),
          radius: 20.r,
          child: ClipOval(
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/placeholder.png',
              image: image,
              fit: BoxFit.cover,
              width: 36.w,
              height: 36.h,
            ),
          ),
        ),
        SizedBox(width: 5.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${title}',style: Theme.of(context).textTheme.bodyLarge),
            Text('${date}',style:Theme.of(context).textTheme.bodySmall,),
          ],
        ),
      ],
    );
  }
}
