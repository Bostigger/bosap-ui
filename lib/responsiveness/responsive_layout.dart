import 'package:flutter/material.dart';
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout({Key? key,required this.mobileScreenLayout,required this.webScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraint){
      if(constraint.maxWidth > 800 ){
        //Display web layout
        return webScreenLayout;
      }
      //display mobile layout
      return mobileScreenLayout;

    });
  }
}
