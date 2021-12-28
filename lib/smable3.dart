import 'package:flutter/material.dart';

class tech extends StatefulWidget {
  const tech({Key? key}) : super(key: key);

  @override
  _techState createState() => _techState();
}

class _techState extends State<tech> {
  List<glob>cod=[];
  add(){
    cod.add(glob("fayis", 19, "arakkal"));
    cod.add(glob("hisham", 78, "kolakkadan"));
    cod.add(glob("kochunni", 19, "valiyaveettil"));
  }
  @override
  void initState(){
    super.initState();
        add();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: cod.length,itemBuilder:(context,indux){
        return Container(
          height: 100,
          width: 200,
          color: Colors.green,
          child: Column(
            children: [
              Text(cod[indux].name.toString()) ,
              Text(cod[indux].age.toString()) ,
              Text(cod[indux].details.toString()) ,

            ],
          ),

        );
    }

    )
    );
  }
}
class glob{
  String name;
  int age;
  String details;
  glob(this.name,this.age,this.details);
}