import 'package:flutter/material.dart';
import 'package:fruitify/core/utils/app_text_styles.dart';

AppBar buildAppbar(BuildContext context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Icon((Icons.arrow_back_ios_new_outlined)),
    ),

    centerTitle: true,
    title: Text(title, textAlign: TextAlign.center, style: TextStyles.bold19),
  );
}
