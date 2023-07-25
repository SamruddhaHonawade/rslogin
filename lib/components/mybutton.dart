import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rslogin/main.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyBotton extends StatelessWidget{
  String name;

    MyBotton({
    super.key,
    required this.name,

  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(25),
      child: InkWell(
        onTap: (){
          print('samruddha');
          Tostmsg();
          Fluttertoast.showToast(
              msg : "This is Center Short Toast",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );

          Navigator.pushReplacement(
              context,
          MaterialPageRoute(builder: (context){
            return MyHomePage();

          }));



        },
        child: Container(

          width: 400,
          height: 65,
          color:Colors.black,
          child:Center(
            child: Text(name,style: TextStyle(
              fontSize: 25,
              color: Colors.white
            ),),
          ) ,

        ),
      ),
    );


  }


}

class Tostmsg {


}