import 'package:dmythra/User.dart';
import 'package:flutter/material.dart';

class Login_as extends StatefulWidget {
  const Login_as({super.key});

  @override
  State<Login_as> createState() => _Login_asState();
}

class _Login_asState extends State<Login_as> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left:110,top: 100),
          child: Row(
            children: [
              CircleAvatar(
                  child: Image(image: AssetImage('Asset/dmythra-logo-removebg 1.png',),),radius:70),
            ],
          ),
        ),
        Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Login as",style: TextStyle(fontWeight:FontWeight.bold,
                fontSize:35,color: Colors.white),),
            )
          ],),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListTile(title: Center(child: Text("User",style:
                TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white))),
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),tileColor: Colors.indigo,onTap: () {
                    return setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return User();
                      },));
                    });
                  },),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListTile(title: Center(child: Text("Organization",style:
                TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white))),
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),tileColor: Colors.indigo,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ListTile(title: Center(child: Text("sponsor",style:
                TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white))),
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),tileColor: Colors.indigo,),
              )
            ],),
          )
        ],)
      ]),
    );
  }
}
