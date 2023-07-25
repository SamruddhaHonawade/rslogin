import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecureText;
  final Icon icon;

  const MyTextfield({
    super.key,
     required this.controller,
    required this.hintText,
    required this.obsecureText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        width: 300,

        child: TextField(
          controller: controller,

            obscureText: obsecureText,

            decoration: InputDecoration(
              prefixIcon: icon,
              hintText: hintText,

              border: OutlineInputBorder(

                  borderSide: BorderSide(
                      color: Colors.black12
                  )


              ),
              enabledBorder: OutlineInputBorder(

                  borderSide: BorderSide(
                      color: Colors.grey

                  )
              ),
              focusedBorder: OutlineInputBorder(


                  borderSide: BorderSide(
                      color: Colors.blue
                  )
              ),

            )


        ),
      ),
    );
  }


}