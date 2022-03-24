import 'package:flutter/material.dart';
class  GridViewDemo extends StatelessWidget{
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 30,
  mainAxisSpacing: 0,
  crossAxisCount: 4,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text("He'd have you all unravel at the"),
      color: Colors.teal[100],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Heed not the rabble'),
      color: Colors.teal[200],
    ),
    Container(
      padding: const EdgeInsets.all(0),
      child: const Text('Sound of screams but the'),
      color: Colors.teal[300],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text.rich(
        TextSpan(
          text: 'Hello ',
          style: TextStyle(fontSize: 30),
          children: <TextSpan>[
            TextSpan(
                text: 'world',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                )),
            // can add more TextSpans here...
          ],
        ),
      ),
      color: Colors.teal[400],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child:  Text('Revolution is coming...'
     ,style: TextStyle(
            decoration:TextDecoration.none,
            fontSize: 20

            ,
    //color: Colors.green,
      foreground: Paint()
      ..color = Colors.blue[700]!,
    )),

      color: Colors.teal[500],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution, they...',style: TextStyle(
          fontSize: 25,
        fontWeight:FontWeight.w700 ,

      ),

      ),
      color: Colors.teal[600],

    ),
  ],
);
  }
  
}

 