import 'dart:ui';
import 'package:Bannu/model/user_name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../GLobal/widgets.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
            children: <Widget>[
              Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bannu.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: new Container(
                decoration:
                new BoxDecoration(color: Colors.black12.withOpacity(0.2)),
              ),
            ),
          ),
              Container(
                alignment: Alignment.center,
                height: 200,
                // color: Colors.red,
                padding: EdgeInsets.only(top:40),
                child : Text("Hey dear baby ! \n\t\t\tIt's for you",
                style: TextStyle(color: Colors.red.withOpacity(0.8),fontSize: 20,
                    fontWeight: FontWeight.w800),)
              ),
              Container(
                alignment: Alignment.center,
                child:  Text(Provider.of<UserNameProvider>(context).namePrint.last,
                  style: TextStyle(fontSize: 25),),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                child: Text(context.watch<UserNameProvider>().lengthOfList.toString(),
                  style: TextStyle(fontSize: 25),),
              ),
          ]
          )),
      bottomNavigationBar: MyBottomNavigationBar(),
     floatingActionButton: FloatingActionButton(
       onPressed: (){
         Provider.of<UserNameProvider>(context, listen: false).changeName("Chubby");
       },
     ),
    );
  }
}
