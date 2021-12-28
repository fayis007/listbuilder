import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class master extends StatefulWidget {
  const master({Key? key}) : super(key: key);

  @override
  _masterState createState() => _masterState();

}

class _masterState extends State<master> {
  List<mon> dot=[];
  add(){
    dot.add(mon(3, "alto", "normal"));
    dot.add(mon(4, "swift", "meduim"));
    dot.add(mon(3, "bmw", "top"));
  }
  @override
  void initState(){
    super.initState();
    add();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: dot.length,itemBuilder: (context,indux){
        return Container(
          width: 300,
          height: 200,
          color: Colors.deepOrange,
          child: Column(
            children: [
              Text(dot[indux].count.toString()),
              Text(dot[indux].item.toString()),
              Text(dot[indux].details.toString()),
            ],
          ),
        );
    }
    )
    );

  }
}
class mon{
  int count;
  String item;
 String details;
 mon(this.count,this.item,this.details);
}