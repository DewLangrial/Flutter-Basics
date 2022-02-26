import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(primarySwatch: Colors.indigo),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Skoolum App")),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Menu"),
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80"))),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Homework"),
            subtitle: Text("Check your homework and complete it."),
            onTap: handlePress,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Classwork"),
            subtitle: Text("Check your classwork today."),
            onTap: handlePress,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: handlePress,
        child: Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  handlePress() {
    debugPrint('value: hi there');
  }
}
