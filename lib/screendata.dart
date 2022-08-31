import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screendata extends StatelessWidget {
  Screendata(this.fname,this.lname);
  String fname,lname="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SafeArea(child: Container(
        
        child: Column(children: [Text(fname),Text(lname)],),)),
    );

  }
}