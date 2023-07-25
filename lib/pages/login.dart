import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rslogin/components/my_textfield.dart';
import 'package:rslogin/components/mybutton.dart';
import 'package:rslogin/pages/registerpage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class login extends StatelessWidget{
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    //TEXT CONTROLLERS
    var user_name =  TextEditingController();
    var user_pass =  TextEditingController();


    return Scaffold(
      body:  SingleChildScrollView(
        child: Center(
          child: Column
            (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
            //=============================== MAIN ICON IN FRONT PAGE
                const Icon(
                  Icons.lock,
                  size: 150,
                ),
                SizedBox(
                  height: 19,
                ),

                //============================---WELL COME TEXT

                const Text("Wellcome Back U have been missed!",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 39,),

                //--------- TEXXXT FIEELDS -------------------------------

                MyTextfield(
                  controller: user_name,
                  hintText: 'Email',
                  obsecureText:false,
                  icon: Icon(Icons.person),
                ),
                SizedBox(
                  height:15 ,
                ),
                //--------PASSWORD TEXT FIELD-----------------
                MyTextfield(
                  controller: user_pass,
                  hintText: 'Password',
                  obsecureText:true,
                  icon: Icon(Icons.key),
                ),

                SizedBox(height: 5,),

                MyBotton(name:'Login'),




                const Padding(

                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot password?"),
                    ],
                  ),
                ),




                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    SizedBox(width: 5,),
                    InkWell(


                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(
                              builder: (context){
                                return RegisterP();

                              }));


                        },
                        child: Text(
                          "Register now",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                          ),

                        ),
                      ),
                    )
                  ],
                )

              ]
          ),
        ),
      ),


    );
  }



}