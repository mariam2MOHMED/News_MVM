import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/category_model.dart';


class categoryItem extends StatelessWidget {
  CategoryModel categoryModel;
  int index;
   categoryItem({
  required this.categoryModel,
  required this.index
  ,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 148,
height: 171,
      decoration: BoxDecoration(
        color: categoryModel.bgColor,
borderRadius: BorderRadiusDirectional.only(
  topStart: Radius.circular(25),
  topEnd: Radius.circular(25),
  bottomStart:Radius.circular(index.isEven?25:0),
  bottomEnd:Radius.circular(index.isOdd?25:0),
)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
Image.asset(categoryModel.image,height: 100,),
          SizedBox(height: 5.0,),
          Text(categoryModel.txt,style:
            Theme.of(context).textTheme.titleMedium,)
          
        ],
      ),
    );
  }
}
