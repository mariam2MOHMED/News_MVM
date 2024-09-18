import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_mvm/news/view/widget/news_list.dart';
import 'package:news_app_mvm/sources/view/widgets/source_item.dart';
import 'package:news_app_mvm/sources/view/widgets/sources_tab.dart';
import 'package:news_app_mvm/sources/view_models/sources_view_models.dart';

import 'package:provider/provider.dart';

import '../shared/widget/error_widget.dart';
import '../shared/widget/loading_widget.dart';

class categoryDetials extends StatefulWidget {
 String id;
   categoryDetials({
required this.id,
     super.key});

  @override
  State<categoryDetials> createState() => _categoryDetialsState();
}

class _categoryDetialsState extends State<categoryDetials> {
final viewModel=SourcesViewModel();
 int currindex=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.getSources(widget.id);
  }
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
        create: (_)=>viewModel,
    child:Consumer<SourcesViewModel>(
      builder: (_,viewModel,_p){
        if(viewModel.isloading==true){
          return loadingIndictor();
        }else if(viewModel.errorMsg!=null){
          return errorIndictor();
        }else{
          return sourcesTab(viewModel.sources);
        }
      },
    )
   ,
    );
    // return FutureBuilder(future: ApiServices.getSource(widget.id),
    //     builder: (context,snapShot){
    //   if(snapShot.connectionState==ConnectionState.waiting){
    //     return loadingIndictor();
    //   }else if(snapShot.hasError||snapShot.data?.status!='ok'){
    //     return errorIndictor();
    //   }else if(snapShot.hasData){
    //     final sources=snapShot.data?.sources??[];
    //     return sourcesTab(sources);
    //   }
    //   return Center();
    //     });

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
