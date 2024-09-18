import 'package:flutter/material.dart';
import 'package:news_app_mvm/categories/category_dedials.dart';
import 'package:news_app_mvm/categories/category_grid.dart';

import 'package:news_app_mvm/setting/view/widget/setting_tab.dart';

import '../../../categories/data/models/category_model.dart';
import '../../../search/viewmodel/search_delegate.dart';
import '../../drawer/drawer.dart';

class homeScreen extends StatefulWidget {
  static const String routeName="/homeScreen";


  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image:
        AssetImage('assets/pattern.png'),fit: BoxFit.fill)
      ),
      child: Scaffold(
        drawer: homeDrawr(
          onItemSelected: onDrawerSelected,
        ),
      appBar: AppBar(
        title: Text("NewsApp"),
        actions: [
          IconButton(onPressed: (){
            // showSearch(context: context,
            //     delegate: SearchTab());
          }, icon: Icon(Icons.search,
            size: 30,))
        ],
      ),
        body:selectcategoryModel!=null?categoryDetials(
          id: selectcategoryModel!.id,
        )
            :drawerItem==DrawerItem.categories?categoryGrid(
          onCategorySelected: onCategorySelected,
        ):
        settingTab(),
      ),
    );
  }

  DrawerItem drawerItem=DrawerItem.categories;
CategoryModel? selectcategoryModel;
  void onCategorySelected(CategoryModel category){
    selectcategoryModel=category;
    setState(() {

    });

  }
  void onDrawerSelected(DrawerItem item){
    drawerItem=item;
    setState(() {

    });
    Navigator.of(context).pop();
    selectcategoryModel=null;
  }
}
