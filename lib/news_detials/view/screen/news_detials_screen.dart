import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app_mvm/news/models/news_response.dart';
import 'package:news_app_mvm/shared/app_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class newsDetialsScreen extends StatelessWidget {
  static String routeName="/newsDetialsScreen";
   newsDetialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg=ModalRoute.of(context)!.settings.arguments as Articles;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage("assets/pattern.png"
          ,),fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("NewsApp"),
        ),
      body:
      Container(
          padding: EdgeInsets.all(16),


          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(arg.urlToImage??"https://i.ytimg.com/vi/yY0ciWj8oco/maxresdefault.jpg",width: double.infinity,)),
              SizedBox(height: 5,),
              Text(arg.source!.name??"",style: Theme.of(context).textTheme.headlineSmall,),
              SizedBox(height: 5,),
              Text(arg.title??"",style: Theme.of(context).textTheme.headlineLarge,),
              SizedBox(height: 5,),
              Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text(arg.publishedAt?.substring(0,10)??"",style:
                  Theme.of(context).textTheme.headlineSmall,)),
              SizedBox(height: 5,),
              Text(arg.description??"",style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: 5,),
              Text(arg.content??"",style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: 10,),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                    animationDuration: Duration(
                      seconds: 2
                    ),
                    fixedSize: Size(170, 40),
                    alignment: AlignmentGeometry.lerp(AlignmentDirectional.centerEnd,
                        AlignmentDirectional.centerEnd, 10) ,
                    backgroundColor: AppTheme.primary,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                    onPressed: (){
                      launcherUrl(arg.url??"");
                    }, child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("ViewDetials",style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                )),
              )
            ],
          )

      ),
      ),
    );
  }
  Future<void>launcherUrl(String url)async{
    final Uri _url=Uri.parse(url);
    if(!await launchUrl(_url)){
      throw Exception("Coudnot find $_url");
    }
  }
}
