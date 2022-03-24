import 'dart:ui';

import 'package:flutter/material.dart';
class CustomMultiChildLayoutDemo extends StatelessWidget{
  const CustomMultiChildLayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Center(
       child: CustomMultiChildLayout(
       delegate: OwnSingleChildLayoutDelegate(),
       children:<Widget>[
         LayoutId(
             id: 1,
             child:Container(

              // width: 300.0,
               //height: 400.0,
               color: Colors.blueAccent,
                 child: Text('Container 1',
                         style: TextStyle(
                           color: Colors.green,
                           foreground: Paint()
                             ..color = Colors.blue[700]!,
                         )
             )
         ))
         ,
         LayoutId(
             id: 2,
             child:Container(

               //width: 300.0,
               //height: 400.0,
               color: Colors.blueAccent,
               child: Text(' gdfg'),
             )
         )

       ]
       ),
     );
  }
  
}

class OwnSingleChildLayoutDelegate  extends MultiChildLayoutDelegate{
  @override
  void performLayout(Size size) {
    layoutChild(1,  const BoxConstraints(maxWidth:  934.0,maxHeight: 623.0,minHeight: 444.0,minWidth: 300.0));

    positionChild(1, const Offset(0, 0));

    layoutChild(2,const   BoxConstraints(maxWidth: 344.0,maxHeight: 800.0,minHeight: 444.0,minWidth: 300.0));
    positionChild(2, Offset(360, 0));
    // TODO: implement performLayout
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    return true;
  }
 
  
}