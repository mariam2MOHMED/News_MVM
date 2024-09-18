import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_mvm/shared/app_theme.dart';
import 'package:news_app_mvm/categories/view/widget/category_item.dart';


import 'data/models/category_model.dart';

class categoryGrid extends StatelessWidget {
  List<CategoryModel> categories=[
    CategoryModel(image: "assets/ball.png", bgColor: AppTheme.red, txt: "Sports",id: "sports"),
    CategoryModel(image: "assets/Politics.png", bgColor: AppTheme.blue, txt: "General",id: "general"),
    CategoryModel(image: "assets/health.png", bgColor: AppTheme.pink, txt: "Health",id: "health"),
    CategoryModel(image: "assets/bussines.png", bgColor: AppTheme.brown, txt: "Business",id: "Business"),
    CategoryModel(image: "assets/environment.png", bgColor: AppTheme.lightBlue, txt: "Entertainment",id: "entertainment"),
    CategoryModel(image: "assets/science.png", bgColor: AppTheme.yellow, txt: "Science",id: "science"),

  ];
  void Function(CategoryModel)onCategorySelected;

  categoryGrid({required this.onCategorySelected});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start ,
        children: [
          Text("Pick your category\nof interest",
            style:Theme.of(context).textTheme.headlineLarge ,),
          SizedBox(height: 10.0,),
          Expanded(
            child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                  (crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15
                ), itemBuilder: (context,index){
                  final category=categories[index];
              return GestureDetector(
                onTap: (){
onCategorySelected(category);
                },
                child: categoryItem(categoryModel: categories[index],
                    index: index),
              );
            }),
          ),
        ],
      ),
    );
  }
}
