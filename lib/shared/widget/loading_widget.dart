import 'package:flutter/material.dart';
import 'package:news_app_mvm/shared/app_theme.dart';

class loadingIndictor extends StatelessWidget {
  const loadingIndictor({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(
      color: AppTheme.primary,
    ));
  }
}
