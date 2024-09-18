import 'package:flutter/material.dart';
import 'package:news_app_mvm/shared/app_theme.dart';

class sourceItem extends StatelessWidget {
  bool isSelected;String source;

  sourceItem({required this.isSelected,
    required this.source,
    super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(

      decoration: BoxDecoration(
          color: isSelected==false?Colors.transparent:
          AppTheme.primary,
          borderRadius:
          BorderRadius.circular(25),
              border: Border.all(
                width: 3,
                color: AppTheme.primary
              )
      ),
      child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14,
        vertical: 10),
        child: Text(source,style: TextStyle(
            color: isSelected==true?AppTheme.white:AppTheme.primary,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Exo'
        ),),
      ),
    );
  }
}