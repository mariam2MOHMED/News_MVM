import 'package:flutter/material.dart';

import 'package:news_app_mvm/news/view/widget/news_item.dart';
import 'package:news_app_mvm/news/view_models/new_view_models.dart';
import 'package:provider/provider.dart';

import '../../../shared/widget/error_widget.dart';
import '../../../shared/widget/loading_widget.dart';


class newsList extends StatefulWidget {
  String sourceId;
   newsList({
     required this.sourceId
     ,super.key});

  @override
  State<newsList> createState() => _newsListState();
}

class _newsListState extends State<newsList> {
 final newModel= NewsViewModel();

  @override


  Widget build(BuildContext context) {
    newModel.getNews(sourceId: widget.sourceId);
    return ChangeNotifierProvider(create: (_)=>newModel,
  child:
  Consumer<NewsViewModel>(
    builder: (_,newModel,__){
      if(newModel.isLoading){
        return loadingIndictor();
      }else if(newModel.errorMsg!=null){
        return errorIndictor();
      }else{
        return ListView.builder(
            itemCount: newModel.news.length,
            itemBuilder:
            (context,index){
          return newsItem(
                articles: newModel.news[index]
            );
            });
      }
    },
  ),
    );




  }
}
