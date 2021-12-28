import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class flutter extends StatefulWidget {
  const flutter({Key? key}) : super(key: key);

  @override
  _flutterState createState() => _flutterState();
}

class _flutterState extends State<flutter> {
  List<mammotty> dq=[];
  add() {
    dq.add(mammotty("mrgaya", "vettakaran", 4));
    dq.add(mammotty("the great father", "father", 10));
    dq.add(mammotty("mayavi", "villan", 4));
  }
   @override
   void initState() {
    // TODO: implement initState
    super.initState();
    add();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount:dq.length,itemBuilder:(contet,indux){
       return Container(
         width: 200,
         height: 300,
         color: Colors.cyan,
         child: Column(
           children: [
             Text(dq[indux].film),
             Text(dq[indux].charactor),
             Text(dq[indux].awards.toString()),
           ],
         ),

    );
    }

    ),
    );
  }
}
class mammotty{
  String film;
  String charactor;
  int awards;
  mammotty(this.film,this.charactor,this.awards);
}