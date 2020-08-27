import 'package:flutter/material.dart';
import 'package:my_app/pages/login.dart';

void main()
{
  runApp(gkeapl());
}
class gkeapl extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text("GKEAPL")
        ),
        body: Register()
      ),
    );
  }
}


