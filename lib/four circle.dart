import 'package:dmythra/User.dart';
import 'package:flutter/material.dart';

class Four_circle extends StatefulWidget {
  const Four_circle({super.key});

  @override
  State<Four_circle> createState() => _Four_circleState();
}

class _Four_circleState extends State<Four_circle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
            return User();
          },));

          }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.blueGrey,)),
        ),
        Column(
          children: [
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right:30),
              child: CircleAvatar(backgroundColor: Colors.indigo,maxRadius: 70,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Therapy support",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                ),),
            ),

            Row(children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: CircleAvatar(backgroundColor: Colors.indigo,maxRadius: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20,left: 30),
                    child: Text("Activities (posts)",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                  ),),
              )
            ],)],),

          Row(children: [
            CircleAvatar(backgroundColor: Colors.indigo,maxRadius:70,
              child: Text("Help",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),)

            ,Row(children: [
              CircleAvatar(backgroundColor: Colors.indigo,maxRadius:70,
                child: Text("Training",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),)
            ],)],)
        ],)
      ]),
    );
  }
}
