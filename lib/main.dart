import 'package:flutter/material.dart';
import 'package:rslogin/pages/login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed:(){

            signout();

          }, icon:Icon(Icons.logout))
        ],

        title: Text('Logged INNN!'),
        backgroundColor: Colors.blue,


      ),

      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
                decoration:BoxDecoration(
            color: Colors.blue,
        ),
          child: Center(child: Text("user"))),
            ListTile(
              title: Text('data1'),

            ),
          ],
        ),

      ),

    );
  }

  void signout() {

    //SIgn OUT code
    Navigator.push(
      context,
    MaterialPageRoute(builder: (context){
      return login();
    }));

  }
}
