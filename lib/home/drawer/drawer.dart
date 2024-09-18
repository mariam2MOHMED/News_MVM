import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_mvm/shared/app_theme.dart';

class homeDrawr extends StatelessWidget {
  void Function(DrawerItem) onItemSelected;
   homeDrawr({
     required this.onItemSelected,
     super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width*0.6,
      height: double.infinity,
      child:  Column(
        children: [
          Container(
            width: double.infinity,
            color: AppTheme.primary,
            height:MediaQuery.of(context).size.height*0.25,
            child: Center(
              child: Text("NewsApp!!",style: TextStyle(
                color: AppTheme.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'
              ),),
            ),
          ),
          Expanded(

            child: Container(
              color: AppTheme.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        onItemSelected(DrawerItem.categories);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.list_sharp,
                            size: 24,
                            color: AppTheme.black,),
                          Text("  Categories",
                            style:Theme.of(context).textTheme.titleLarge ,)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){
                        onItemSelected(DrawerItem.setting);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.settings,
                            size: 24,
                            color: AppTheme.black,),
                          Text("  Settings",
                            style:Theme.of(context).textTheme.titleLarge ,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
enum DrawerItem{
  categories,
  setting;
}