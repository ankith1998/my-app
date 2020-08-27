import 'package:flutter/material.dart';

class Rage extends StatelessWidget {
  TextEditingController uname = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController cnum = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("REGISTRATION"),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20.0,),
              TextField(
                controller: uname,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                controller: pass,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.security),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                controller: cnum,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: "Contact number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  )
                ),
              ),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: (){
                  var name = uname.text;
                  var passw = pass.text;
                  var phone = cnum.text;
                  print(name);
                  print(passw);
                  print(phone);
                  print("Registered");
                },
                child: Container(
                  height: 60.0,
                  width: 280.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.lightBlue, Colors.pink]),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Center(child: Text("Register")),
                ),
              ),
              SizedBox(height: 20.0,),
              GestureDetector(
                onTap: (){ Navigator.of(context).pop(context);
                },
                child: Container(
                  width: 250.0,
                  height: 50.0,
                  child: Center(child: Text("Back")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(colors: [Colors.black26,Colors.pink,Colors.black26]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
