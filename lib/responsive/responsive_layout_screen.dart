import 'package:flutter/cupertino.dart';

import 'dimensions.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({Key? key,required this.webScreenLayout,required this.mobileScreenLayout}) : super(key: key);

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
     if(constraints.maxHeight < webScreenSize){
       return widget.webScreenLayout;
     }
     return widget.mobileScreenLayout;
    });
  }
}
