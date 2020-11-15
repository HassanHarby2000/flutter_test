import 'package:flutter/material.dart';
import 'package:sana_app/components/Direction.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  String apptitle=" البسامي يخدمكم !" ;
  static const RouteName='/HomeScreen';
  @override
  Widget build(BuildContext context) {
    return   Direction(
        child:   Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(apptitle,textAlign: TextAlign.center,),
      ),
      body: Body(),
    )
    );
  }
}
