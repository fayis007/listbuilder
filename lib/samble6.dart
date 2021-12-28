import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lion extends StatefulWidget {
  const lion({Key? key}) : super(key: key);

  @override
  _lionState createState() => _lionState();
}

class _lionState extends State<lion> {
  List<student> boys=[];
  add(){
    boys.add(student("manju", 19, "rcsh"));
    boys.add(student("chinju", 18, "glps"));
    boys.add(student("hari", 99, "moorkanad"));
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
      backgroundColor: Colors.black12,

      body: ListView.builder(
          itemCount: boys.length, itemBuilder: (context, indux) {
        return Container(
          width: 200,
          height: 100,
          color: Colors.yellow,
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(boys[indux].name,style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.deepOrange,
                fontSize:20,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
              ),),
              Text(boys[indux].age.toString()),
              Text(boys[indux].school),

            ],
          ),

        );
      }
      ),
    );
  }
}
class student{
  String name;
  int age;
  String school;
  student(this.name,this.age,this.school);
}