import 'package:flutter/material.dart';

class CustomTextDetails extends StatelessWidget {
  final String? title;
  final String? desc;
  final TextStyle? style;
  const CustomTextDetails({super.key,  this.title,  this.desc, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${title!} ${desc!}',
      style: style
    );
  }
}
