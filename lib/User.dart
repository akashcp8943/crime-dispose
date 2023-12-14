import 'package:dmythra/Login%20as.dart';
import 'package:dmythra/four%20circle.dart';
import 'package:dmythra/ud%20id.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body:ListView(
        children: [
          (Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login_as();
                },));

                }, icon: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.blueGrey,)),
              )],),
            )
            ,Padding(
              padding: const EdgeInsets.only(left:110,),
              child: Row(
                children: [
                  CircleAvatar(
                      child: Image(image: AssetImage('Asset/dmythra-logo-removebg 1.png',),),radius:70),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFormField(decoration: InputDecoration(labelText: "UD ID",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFormField(decoration: InputDecoration(labelText: "Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),),),
                ),
                Row(children: [TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Ud_id();
                },));

                }, child: Padding(
                  padding: const EdgeInsets.only(left: 160,top:30),
                  child: Text("Forget password ?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                ))],),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Four_circle();
                  },));

                  }, child: Text("Login",style: TextStyle(fontSize: 20),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Text("Don't have an Account?",style: TextStyle(fontSize:18,color: Colors.white)),
                ),TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Ud_id();
                },));

                }, child: Padding(
                  padding: const EdgeInsets.only(left:80,),
                  child: Text("Register Now",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.white),),
                )),


              ],),
            )

          ],)),
        ],
      ),
    );
  }
}
