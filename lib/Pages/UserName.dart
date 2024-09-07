import 'package:Bannu/Pages/HomePage.dart';
import 'package:Bannu/model/user_name.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class UserName extends StatelessWidget{

  UserName({super.key});
  TextEditingController user = TextEditingController();

  @override
  Widget build(BuildContext context){
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(
        create: (context) => UserNameProvider(),
    ),
    ],
    child:  Scaffold(
      resizeToAvoidBottomInset: false,
      body:Center(
          child : Container(
            color: Provider.of<UserNameProvider>(context).isEven
                ? Colors.yellow
                : Colors.white,
        width: MediaQuery.of(context).size.width * 0.95,
        child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

           Consumer<UserNameProvider>(
           builder: (context, value, child) {
             return  Container(
              color: value.isEven
                ? Colors.red
                : Colors.green,
                padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).height * 0.2,
                    bottom: MediaQuery.sizeOf(context).height * 0.1),
                alignment: Alignment.topCenter,
                // color: Colors.greenAccent,
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
                ),
              );
          }),

              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text( Provider.of<UserNameProvider>(context).namePrint.last),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: user,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                    Provider.of<UserNameProvider>(context).lengthOfList
                      .toString(),
                  style: TextStyle(fontSize: 25),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // UserNameProvider().changeName(user.text);
                  Provider.of<UserNameProvider>(context,listen: false).changeName(user.text);
                  // context.read<UserNameProvider>().changeName(user.text);
                  // setState(() {
                  //
                  // });
                  user.clear();
                },
                child: Container(
                  height: 50,
                  width: 250,
                  // color: Colors.orangeAccent,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'Login',
                    // textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context,  MaterialPageRoute(builder: (_) => HomePage())),
      ),
    ));
  }

}