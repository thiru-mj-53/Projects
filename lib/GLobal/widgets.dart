
import 'package:flutter/material.dart';
import 'package:Bannu/GLobal/globalValues.dart';

import '../Pages/CounterPage.dart';
import '../Pages/HomePage.dart';
import '../Pages/ListViewPage.dart';

class MyBottomNavigationBar extends StatelessWidget{


  int currentIndex = tabIndex;

  @override
  Widget build(BuildContext context){
    print('currentIndex $currentIndex');
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
         height: 80,
         child: BottomNavigationBar(
          elevation: 20,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          backgroundColor: colorScheme.onSecondaryContainer,
          selectedItemColor: colorScheme.onInverseSurface,
          unselectedItemColor: colorScheme.inverseSurface,
          selectedLabelStyle: textTheme.caption,
          unselectedLabelStyle: textTheme.caption,
          onTap: (value) {
            // Respond to item press.
              currentIndex = value;
              tabIndex = currentIndex;
              print("Index : $value");
              switch (currentIndex) {
                case 0: {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomePage()));
                  }
                  break;
                case 1: {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) =>
                        CounterPage(title: "Bannu")));
                  }
                  break;
                case 2 :{
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => HomePage()));
                  showAlertDialog(context);
              }
              break;
                case 3: {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) =>
                        ListViewPage(50)));
                  }
                  break;
              };},
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                size: 40,
              ),
              label: 'Counter',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                size: 40,
              ),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                size: 40,
              ),
              label: 'List',
            ),
          ],
        ));
  }


   showAlertDialog(BuildContext context) {
     Widget cancelButton = TextButton(
       child: Text("Cancel"),
       onPressed:  () {
         Navigator.of(context).pop();
       },
     );
     Widget continueButton = TextButton(
       child: Text("Ok"),
       onPressed:  () {
         Navigator.of(context).pop();
       },
     );
      AlertDialog alert = AlertDialog(
        title: Text("Sorry baby !..."),
        content: Text("This feature will available soon",
        style: TextStyle(fontSize: 15),),
        actions: [
          cancelButton,
          continueButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
  }
}
