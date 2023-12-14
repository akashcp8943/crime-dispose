import 'package:dmythra/User.dart';
import 'package:dmythra/four%20circle.dart';
import 'package:flutter/material.dart';

class Ud_id extends StatefulWidget {
  const Ud_id({super.key});

  @override
  State<Ud_id> createState() => _Ud_idState();
}

class _Ud_idState extends State<Ud_id> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: ListView(
        children: [
          Expanded(
            child: Column(children: [
              Row(children: [Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return User();
                },));

                }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.blueGrey,)),
              )
              ],),
              Padding(
                padding: const EdgeInsets.only(right: 10,left: 10,bottom: 20),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right:220),
                    child: Text("UD ID",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold)),
                  ),
                  TextFormField(decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                  Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: Text("Disability type",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold)),
                  ),
                  ListTile(title:Center(child: Text("Blindness",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),)),
                      trailing: Icon(Icons.arrow_drop_down,size: 30),
                      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
                  Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Text("Date of birth",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold)),
                  ),
                  TextFormField(decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text("EMail id",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold)),
                  ),
                  TextFormField(decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text("Password",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold)),
                  ),
                  TextFormField(decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                  Padding(
                    padding: const EdgeInsets.only(right: 190),
                    child: Text("Adhar no",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold)),
                  ),
                  TextFormField(decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Four_circle();
                    },));

                    }, child: Text("Submit",style: TextStyle(fontSize: 20),),),
                  ),
                ],),
              )

            ]),
          ),
        ],
      ),
    );
  }
}
