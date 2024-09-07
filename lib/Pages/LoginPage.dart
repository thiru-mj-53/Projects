import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:Bannu/Pages/HomePage.dart';



class LoginPage extends StatefulWidget{

  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  String _errorMessage = '';
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.clear();
    pass.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:Center(
        child : Container(
           width: MediaQuery.of(context).size.width*0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(
                  padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height*0.2,bottom:MediaQuery.sizeOf(context).height*0.1),
                  alignment: Alignment.topCenter,
                  // color: Colors.greenAccent,
                  child :const Text('Login',style:
                  TextStyle(fontSize: 50,fontWeight: FontWeight.w600),),
                ),

                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'User Name',
                              hintText: 'Enter valid mail id as abc@gmail.com'
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.sizeOf(context).height*0.05),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          obscureText: true,
                          controller: pass,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              hintText: 'Enter your secure password'
                          ),
                          // onChanged: (val){
                          //   validateEmail(val)!="" ?
                          // },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 100,),
                 GestureDetector(
                    onTap: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                     if(validateEmail(email.text,pass.text) !=""){
                       setState(() {

                       });
                     }else {
                       email.clear();
                       pass.clear();
                       Navigator.push(
                           context,
                           MaterialPageRoute(builder: (_) => HomePage()));
                     }
                    },
                    child: Container(
                      height: 50,
                      width: 250,
                      // color: Colors.orangeAccent,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:Text(
                      'Login',
                      // textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
               SizedBox(height: 10,),
               Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(_errorMessage, style: TextStyle(color: Colors.red,
               fontWeight: FontWeight.bold,
               fontSize: 20),)),
              ],
            ),
          )),
    );
  }

  String validateEmail(String val,String pas) {
    if(val.isEmpty){
        _errorMessage = "Email can not be empty";
    }else if(!EmailValidator.validate(val, true)){
        _errorMessage = "Invalid Email Address";
    }else{
      if(val== "rangeela@gmail.com") {
        if(pas =="123")
        _errorMessage = "";
        else
         _errorMessage = "Invalid password";
      }
      else
        _errorMessage = "Invalid Email Address";
    }
    return _errorMessage;
  }


}