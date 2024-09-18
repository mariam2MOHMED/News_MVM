import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_mvm/sources/data/models/sourcesResponse.dart';
import 'package:news_app_mvm/sources/view/widgets/source_item.dart';

import '../../../news/view/widget/news_list.dart';

class sourcesTab extends StatefulWidget {
  final List<Sources> sources;
   sourcesTab(this.sources,{super.key});

  @override
  State<sourcesTab> createState() => _sourcesTabState();
}

class _sourcesTabState extends State<sourcesTab> {
  int currindex=0;

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image:
          AssetImage('assets/pattern.png'),
              fit: BoxFit.fill)
      ),
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 12,),
            DefaultTabController(
                length:widget.sources.length,

                child: TabBar(
                    onTap: (index){
                      currindex=index;setState(() {

                      });
                    },
                    dividerColor: Colors.transparent,
                    isScrollable: true,

                    indicatorColor: Colors.transparent,
                    tabs: widget.sources.map((source)
                    => sourceItem(
                        source: source.name??"",
                        isSelected:
                        widget.sources.indexOf(source)==currindex)).
                    toList()
                )),
            Expanded(child: newsList(sourceId:
            widget.sources[currindex].id??"",))
          ],
        ),
      ),
    );;
  }
}
