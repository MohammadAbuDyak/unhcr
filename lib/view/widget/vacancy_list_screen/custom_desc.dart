import 'package:flutter/material.dart';

class CustomDesc extends StatelessWidget {
  final String desc;
  const CustomDesc({super.key, required this.desc});

  @override
  Widget build(BuildContext context) {
    return  Text('${desc}', style: Theme.of(context).textTheme.bodyMedium,);
  }
}
