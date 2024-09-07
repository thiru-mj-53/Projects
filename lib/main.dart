import 'package:Bannu/Pages/UserName.dart';
import 'package:Bannu/model/user_name.dart';
import 'package:flutter/material.dart';
import 'package:Bannu/Pages/LoginPage.dart';
import 'package:provider/provider.dart';

import 'Pages/CounterPage.dart';
import 'Pages/HomePage.dart';
import 'Pages/ListViewPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => UserNameProvider(),
          ),
        ],
      child: MaterialApp(
        title: 'Bannu',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/userName',
        routes: {
          '/': (context) =>  LoginPage(),
          '/Home' : (context) => HomePage(),
          '/counter': (context) =>  CounterPage(title: 'Bannu'),
          '/listview' : (context) => ListViewPage(0),
          '/userName' : (context) => UserName()
        },
      ),
    );
  }
}
