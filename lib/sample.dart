import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tree extends StatefulWidget {
  const tree({Key? key}) : super(key: key);

  @override
  _treeState createState() => _treeState();
}

class _treeState extends State<tree> {
  List<nature> hill = [];
  add() {
    hill.add(nature("anu", "kashmeer", 1000));
    hill.add(nature("babu", "ladak", 9000));
    hill.add(nature("maya", "ootty", 4000));
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
        body: ListView.builder(
            itemCount: hill.length,
            itemBuilder: (context, indux) {
              return Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    border: Border.all(
                      color: Colors.yellow,
                      width: 3,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink,
                        spreadRadius: 10,
                        blurRadius: 5,

                      ),
                    ]),
                child: Column(
                  children: [
                    Text(
                      hill[indux].place,
                      style: TextStyle(
                        backgroundColor: Colors.yellow,
                        letterSpacing: 2,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                        color: Colors.indigoAccent,
                      ),
                    ),
                    Text(
                      hill[indux].name,
                      style: TextStyle(
                        backgroundColor: Colors.cyan,
                        letterSpacing: 2,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    Text(hill[indux].emout.toString()),
                  ],
                ),
              );

            }));
  }
}

class nature {
  String name;
  String place;
  int emout;
  nature(this.name, this.place, this.emout);
}
