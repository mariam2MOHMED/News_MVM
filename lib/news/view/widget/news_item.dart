import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_mvm/news_detials/view/screen/news_detials_screen.dart';
import 'package:news_app_mvm/shared/app_theme.dart';
import 'package:news_app_mvm/news/models/news_response.dart';

class newsItem extends StatelessWidget {
  Articles articles;
   newsItem({required this.articles,super.key});

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          Navigator.pushNamed(context, newsDetialsScreen.routeName,
          arguments: articles
          );
        },
        child: Container(
        padding: EdgeInsets.all(16),


        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(articles.urlToImage??"https://i.ytimg.com/vi/yY0ciWj8oco/maxresdefault.jpg",width: double.infinity,)),
            SizedBox(height: 5,),
            Text(articles.source!.name??"",style: Theme.of(context).textTheme.headlineSmall,),
            SizedBox(height: 5,),
            Text(articles.title??"",style: Theme.of(context).textTheme.headlineMedium,),
          ],
        )

            ),
      );
  }
}
