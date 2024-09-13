import 'package:flutter/material.dart';

class CustomCompanyName extends StatelessWidget {
  final String companyName;
  const CustomCompanyName({super.key, required this.companyName});

  @override
  Widget build(BuildContext context) {
    return Text('Company Name: ${companyName}', style: Theme
        .of(context)
        .textTheme
        .labelMedium,);
  }
}
