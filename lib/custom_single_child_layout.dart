import 'package:flutter/material.dart';
class CustomChildLayoutDemo extends StatelessWidget{
  const CustomChildLayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Center(
       child: CustomSingleChildLayout(
       delegate: OwnSingleChildLayoutDelegate(),
       child: Container(
         child: Text('this is a container'),
         width: 600.0,
         height: 600.0,
         color: Colors.blueAccent,
       ),
       ),
     );
  }
  
}

class OwnSingleChildLayoutDelegate  extends SingleChildLayoutDelegate{
  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    // TODO: implement shouldRelayout
   return true;
  }
  
}