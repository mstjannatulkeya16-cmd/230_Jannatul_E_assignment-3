import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(115, 31, 31, 30),
      appBar: AppBar(
        title: Text(
          "Leading University🙂",
          style: GoogleFonts.lobster(color: Colors.black),
        ), //Text
        backgroundColor: const Color.fromARGB(255, 163, 207, 32),
        foregroundColor: const Color.fromARGB(255, 66, 24, 137),
        // leading: Icon(Icons.home, color: Colors.amber),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        //   IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        // ],
      ), //AppBar
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text(
                  "Hello,Everyone",
                  style: GoogleFonts.lobster(
                    color: const Color.fromARGB(199, 41, 13, 203),
                    fontSize: 100,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), //Padding
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  "I'm Jannat",
                  style: GoogleFonts.lobster(
                    color: const Color.fromARGB(255, 12, 4, 83),
                    fontSize: 70,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 200,
              width: 200,

              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: const Color.fromARGB(255, 212, 14, 126),
                child: Center(
                  child: Image.asset(
                    "assets/images/flutter.png",
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color.fromARGB(255, 187, 212, 23),

                child: Center(
                  child: Text(
                    "I'm  Card!!!!",
                    style: GoogleFonts.lobster(
                      color: const Color.fromARGB(255, 233, 88, 16),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),

            //Padding
            Container(
              width: 200,
              height: 200,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 164, 49),
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Flutter!!",
                      style: GoogleFonts.lobster(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),

                  Text(
                    "Container!!",
                    style: GoogleFonts.lobster(
                      color: const Color.fromARGB(255, 195, 6, 6),
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), //Container

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
            title: Text(
              "HomePage",
              style: GoogleFonts.lobster(color: Colors.white, fontSize: 16),
            ),
            onTap: () {},
          ), //ListTile
          ListTile(
            //ListTile
            leading: Icon(Icons.settings),
            title: Text(
              "Settings",
              style: GoogleFonts.lobster(color: Colors.white, fontSize: 16),
            ),
            onTap: () {},
          ), //ListTile
          ListTile(
            //ListTile
            leading: Icon(Icons.person),
            title: Text(
              "ProfilePage",
              style: GoogleFonts.lobster(color: Colors.white, fontSize: 16),
            ),
            onTap: () {},
          ), //ListTile
        ],
      ), //NavigationDrawer
    ); //Scaffold
  }
}
