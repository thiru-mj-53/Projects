
import 'package:Bannu/model/UserModel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../GLobal/widgets.dart';
import '../model/users.dart';

class ListViewPage extends StatefulWidget{
 final int count;
  ListViewPage(this.count);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  var userList = <User>[];
  bool loading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    generateListItems();
  }

  generateListItems() async {
    setState(() {
      loading = true;
    });
    print("userfetching...");
    userList = await fetchUser();
    print("Completed... ${userList.length}");
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Rang",
            style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.deepOrange)),
      ),
      body:
      ListView.builder(
          itemCount: userList.length,
          cacheExtent: 20.0,
          controller: ScrollController(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) {
            return Container(
                alignment: Alignment.center,
                width: MediaQuery
                    .sizeOf(context)
                    .width * 0.9,
                padding: EdgeInsets.all(2),
                color: Colors.greenAccent.withOpacity(0.2),
                child: Card(
                    color: Colors.deepOrangeAccent.withOpacity(0.2),
                    child: ListTile(
                      leading: CircleAvatar(
                          backgroundImage: NetworkImage(userList[index].picture!.thumbNail!)
                      ),
                      title: Text(
                        '${userList[index].userName!.tittle} ${userList[index].userName!.first}',
                        // textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20,
                            color: Colors.tealAccent),
                        key: Key('text_${index}'),
                      ),
                      // titleAlignment:,
                    )));
          }
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     fetchUser();
      //   },
      //
      // ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }

  Future<List<User>> fetchUser() async {
    try {
      Dio dio = Dio();
      String apiUrl = 'https://randomuser.me/api/?results=100';
      List<User> userList = [];
      Response response = await dio.get(apiUrl);
      print("response: ${response.data}");
      print("status: ${response.statusCode}, ${response.statusMessage}");
      UserStatus? users = UserStatus.fromJson(response.data);
      print("1233");
      if (response.statusCode == 200)
        userList = users.userList ?? [];
      return userList;
    } catch (e) {
      print("exception $e");
      return [];
    }
  }
}
