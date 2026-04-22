import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Leading University",
          style: GoogleFonts.lobster(color: Colors.black),
        ), //Text
        backgroundColor: const Color.fromARGB(255, 163, 207, 32),
        foregroundColor: const Color.fromARGB(255, 8, 8, 8),
        // leading: Icon(Icons.home, color: Colors.amber),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        //   IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        // ],
      ), //AppBar
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Hello,Everyone",
              style: GoogleFonts.lobster(
                color: const Color.fromARGB(255, 207, 104, 212),
                fontSize: 30,
              ),
            ),
          ), //Padding
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "I'm Jannat",
              style: GoogleFonts.lobster(
                color: const Color.fromARGB(255, 207, 104, 212),
                fontSize: 20,
              ),
            ),
          ), //Padding

          Container(
            width: 200,
            height: 100,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 33, 164, 49),
            ),
            child: Text(
              "Container!!",
              style: GoogleFonts.lobster(color: Colors.white, fontSize: 20),
            ), //Text
          ), //Container
        ],
      ), //Column
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.add),
      ), //FloatingActionButton
      endDrawer: NavigationDrawer(
        //NavigationDrawer
        children: [
          ListTile(
            //ListTile
            leading: Icon(Icons.home),
            title: Text("HomePage"),
            onTap: () {},
          ), //ListTile
          ListTile(
            //ListTile
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ), //ListTile
          ListTile(
            //ListTile
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
            onTap: () {},
          ), //ListTile
        ],
      ), //NavigationDrawer
    ); //Scaffold
  }
}
