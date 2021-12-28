import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class samble2 extends StatefulWidget {
  const samble2({Key? key}) : super(key: key);

  @override
  _samble2State createState() => _samble2State();
}

class _samble2State extends State<samble2> {
  List<Samble> a1=[];
  add(){
    a1.add(Samble(3, "appolo", "color"));
    a1.add(Samble(9,"ABC","red"));
    a1.add(Samble(7,"cde","yellow"));
    a1.add(Samble(8,"fgh","black"));
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
      body: ListView.builder(itemCount: a1.length,itemBuilder: (context,index){
        return Container(
          height: 100,
          color: Colors.deepOrange,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(a1[index].tyre.toString()),
              Text(a1[index].name.toString()),
              Text(a1[index].color.toString()),
            ],
          ),
        );
      })


    );
  }
}
class Samble {
  int tyre;
  String name;
  String color;

  Samble(this.tyre,this.name,this.color);
}


