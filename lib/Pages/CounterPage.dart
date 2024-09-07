import 'package:flutter/material.dart';

import '../GLobal/widgets.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title});

  final String title;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
        _counter++;
        if(_counter>20)
          _counter=1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.3),
        title: Text(widget.title,style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.deepOrange)),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40,),
            Text(
              'Baby $_counter',
              style: TextStyle(fontSize: 40, color: Colors.green,fontWeight: FontWeight.bold),
            ),
            _counter%2==0 ?Text("Love you",
              style: TextStyle(fontSize: 40, color: Colors.pinkAccent,fontWeight: FontWeight.bold)) :
            Text("Ummaaaaa", style: TextStyle(fontSize: 40, color: Colors.orange,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}