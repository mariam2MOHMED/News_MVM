

import 'package:flutter/material.dart';
import 'package:news_app_mvm/shared/app_theme.dart';

class errorIndictor extends StatelessWidget {
  const errorIndictor({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Soething went Wrong!!",
        style:TextStyle(
          color: AppTheme.primary,
          fontWeight: FontWeight.bold,
          fontSize: 24
        ) ,),
    );
  }
}
