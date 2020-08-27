import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/pages/r_page.dart';

class Register extends StatelessWidget {
  TextEditingController uname = TextEditingController();
  TextEditingController password =TextEditingController();
  TextEditingController num3 =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 200.0,),
              TextField(
                controller: uname,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    hintText: "Enter username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
              ),
              SizedBox(height: 20.0,),
              TextField(
                controller: password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Enter password"
                ),
              ),
              SizedBox(height: 20.0,),
              RaisedButton(
                onPressed: (){
                 print ("logged in");
                },
                color: Colors.cyanAccent,
                child: Text("LOGIN"),
              ),
              SizedBox(height: 10.0,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Rage()));
                  print("PROCEEDED");
                },
                child: Container(
                  height: 50.0,
                  width:  150.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.black26,Colors.cyanAccent,Colors.black26]),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(child: Text("Signup")),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
