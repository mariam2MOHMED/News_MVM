// import 'package:flutter/material.dart';
// import 'package:news_app_mvm/categories/data/models/category_model.dart';
// import 'package:news_app_mvm/news/models/news_response.dart';
// import 'package:news_app_mvm/shared/app_theme.dart';
// import 'package:provider/provider.dart';
//
// import '../../news/view/widget/news_item.dart';
// import '../../news/view_models/new_view_models.dart';
// import '../../shared/widget/error_widget.dart';
// import '../../shared/widget/loading_widget.dart';
//
// class SearchTab extends SearchDelegate{
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//
//  return [
//
//    IconButton(onPressed: (){
//      showResults(context);
//    }, icon:
//    Icon(Icons.search,color: Colors.white,))
//  ];
//   }
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//   return IconButton(onPressed: (){},
//       icon: Icon(Icons.search,color: Colors.white,
//
//       ));
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     // TODO: implement buildResults
//     return ChangeNotifierProvider<NewsViewModel>(
//       create: (_)=>NewsViewModel(),
//       child:
//       Consumer<NewsViewModel>(
//         builder: (BuildContext context,newModel,__){
//
//           newModel.getNews(query: query);
//           if(newModel.isLoading){
//             return loadingIndictor();
//           }else if(newModel.errorMsg!=null){
//             return errorIndictor();
//           }
//          else{
//             final List<Articles> news=newModel.news;
//             return Container(
//        decoration: BoxDecoration(
//          color: Colors.white,
//          image: DecorationImage(image: AssetImage('assets/pattern.png'))
//        ),
//               child: ListView.builder(
//                   itemCount: news.length,
//                   itemBuilder:
//                       (context,index){
//                     return newsItem(
//                         articles:news[index]
//                     );
//                   }),
//             );
//           }
//         },
//       ),
//     );
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//
//     return ChangeNotifierProvider<NewsViewModel>(
//
//       create: (_)=>NewsViewModel(),
//       child:
//       Consumer<NewsViewModel>(
//         builder: (_,newModel,__){
//          final view=NewsViewModel();
//          CategoryModel? categoryModel;
//          view.getNews(query: query);
//           if(newModel.isLoading){
//             return loadingIndictor();
//           }else if(newModel.errorMsg!=null){
//             return errorIndictor();
//           }
//
//           else{
//             final List<Articles> news=newModel.news;
//             return Container(
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   image: DecorationImage(image: AssetImage('assets/pattern.png'))
//               ),
//               child: ListView.builder(
//                   itemCount: news.length,
//                   itemBuilder:
//                       (context,index){
//                     return newsItem(
//                         articles: news[index]
//                     );
//                   }),
//             );
//           }
//         },
//       ),
//     );
//   }
// }