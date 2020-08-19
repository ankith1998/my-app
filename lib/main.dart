import 'package:flutter/material.dart';

void main()
{
  runApp(gkeapl());
}
class gkeapl extends StatelessWidget {
  TextEditingController uname = TextEditingController();
  TextEditingController password =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GKEAPL")
        ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: 200.0,),
                  Text("USERNAME"),
                  TextField(
                    controller: uname,
                    decoration: InputDecoration(
                     prefixIcon: Icon(Icons.account_box),
                      hintText: "Enter username",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 20.0,),
                  Text("PASSWORD"),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Enter password"
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  RaisedButton(
                    onPressed: (){
                      var user = uname.text;
                      var pass = password.text;
                      print(user);
                      print(pass);
                      print("Logged In Successfully");
                    },
                    color: Colors.lightBlue,
                    child: Text("LOGIN"),
                  )
                ],
              ),
      ),
          ),
      )
    );
  }
}
