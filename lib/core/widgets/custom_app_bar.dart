import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    title: Text(title, style: AppTextStyles.bold19),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios_new),
    ),
  );
}
