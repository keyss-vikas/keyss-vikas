import 'package:flutter/material.dart';
class  StackDemo extends StatelessWidget{
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return  SizedBox(
  width: 850,
  height: 950,

  child: Stack(
    children: <Widget>[
      Container(
        width: 250,
        height: 250,
        color: Colors.pink,
        child: Text('container 1',style: TextStyle(
          color: Colors.black
        ),),
      ),
      Container(
         //color: Colors.yellow,
        margin: EdgeInsets.only(top:45,left: 400,),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.white,//black.withAlpha(0),
              Colors.white,//black12,
              Colors.white
            ],
          ),
        ),
        child: const Text(
          'Foreground Text',
          style: TextStyle(color: Colors.yellow, fontSize: 50.0),
        ),
      ),
    ],
  ),
);
  }
  
}

 