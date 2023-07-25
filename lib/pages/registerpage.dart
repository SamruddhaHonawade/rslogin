import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rslogin/pages/login.dart';

import '../components/my_textfield.dart';
import '../components/mybutton.dart';

class RegisterP extends StatelessWidget{

  const RegisterP({super.key});

  @override
  Widget build(BuildContext context) {
    var user_email =  TextEditingController();
    var user_pass =  TextEditingController();
    var user_age =  TextEditingController();
    var user_phno =  TextEditingController();
    var user_name =  TextEditingController();
    var user_lastname =  TextEditingController();

     return Scaffold(
       body: SingleChildScrollView(
         child: Center(
           child: Column
             (
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(
                   height: 50,
                 ),
                 //=============================== MAIN ICON IN FRONT PAGE
                 Icon(
                   Icons.android_sharp,
                   size: 100,
                 ),
                 SizedBox(
                   height: 5,
                 ),

                 //============================---WELL COME TEXT




                 //--------- TEXXXT FIEELDS -------------------------------

                 MyTextfield(
                     controller: user_name,
                     hintText: 'Name',
                     obsecureText: false,
                     icon: Icon(Icons.person)),



                 MyTextfield(
                     controller: user_lastname,
                     hintText: 'Last Name',
                     obsecureText: false,
                     icon: Icon(Icons.person)),




                 MyTextfield(
                     controller: user_age,
                     hintText: 'Age',
                     obsecureText: false,
                     icon: Icon(Icons.person)),

               MyTextfield(
                   controller: user_email,
                   hintText: 'Email',
                   obsecureText:false,
                   icon: Icon(Icons.email),
                 ),

                 //--------PASSWORD TEXT FIELD-----------------
                 MyTextfield(
                   controller: user_pass,
                   hintText: 'Password',
                   obsecureText:true,
                   icon: Icon(Icons.key),
                 ),



                 MyTextfield(
                   controller: user_pass,
                   hintText: 'Confirm Password',
                   obsecureText:true,
                   icon: Icon(Icons.password),
                 ),

                 MyBotton(name:'Create a Account'),





                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Alredy a member?"),
                     SizedBox(width: 5,),
                     InkWell(


                       child: InkWell(
                         onTap: (){
                           Navigator.push(context,MaterialPageRoute(
                               builder: (context){
                                 return login();
                               }));
                           },
                         child: Text(
                           "Login now",
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