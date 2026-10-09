
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color themeColor = Color.fromARGB(255, 157, 170, 82);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        backgroundColor: themeColor,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: themeColor,
              ),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              currentAccountPicture: Icon(Icons.person_2),
            ),

            ListTile(
              trailing: const Icon(Icons.home),
              hoverColor: themeColor,
              title: const Text("Homepage"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(),

            ListTile(
              trailing: const Icon(Icons.call),
              hoverColor: themeColor,
              title: const Text("Contact Me"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(),

            ListTile(
              trailing: const Icon(Icons.feedback),
              hoverColor: const Color.fromARGB(255, 170, 123, 82),
              title: const Text("Feedback"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Spacer(),

            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Copyright"),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: themeColor,
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        tooltip: "Message",
        child: const Icon(Icons.message),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: TextButton(
                onPressed: () {},
                child: const Text("Red"),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Green"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Yellow"),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("Blue"),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.alarm),
              ),
            ),
          ],
        ),
      ),
    );
  }
}