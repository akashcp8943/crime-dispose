import 'package:dmythra/Login%20as.dart';
import 'package:flutter/material.dart';

class First_pages extends StatefulWidget {
  const First_pages({super.key});

  @override
  State<First_pages> createState() => _First_pagesState();
}

class _First_pagesState extends State<First_pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [Padding(
            padding: const EdgeInsets.only(right:10,top: 100),
            child: CircleAvatar(
                child: Image(image: AssetImage('Asset/dmythra-logo-removebg 1.png',),),radius:100),
          ),
            Padding(
              padding: const EdgeInsets.only(left: 55,top: 50),
              child: Row(
                children: [
                  Text("Let's make it Happen",style: TextStyle(fontSize:25,
                      fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:170,left: 190),
              child: ElevatedButton(onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return Login_as();

              },));

              }, child: Icon(Icons.arrow_forward,color: Colors.blue,)),
            )

      ]),
    );
  }
}
