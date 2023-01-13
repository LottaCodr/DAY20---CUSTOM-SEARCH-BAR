import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Using Material App',
      theme: ThemeData(
        cardColor: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon myIcon = const Icon(Icons.search);
  Widget mySearchBar = const Text("My Search Bar App");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Recreating a Search Bar"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (myIcon.icon == Icons.search) {
                    //my action here
                    myIcon = const Icon(Icons.cancel);
                    mySearchBar = const ListTile(
                      leading: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 29,
                      ),
                      title: TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for",
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    );
                  } else {
                    myIcon = const Icon(Icons.search);
                    mySearchBar = const Text("My Search Bar App");
                  }
                });
              },
              icon: myIcon,
            )
          ],
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Text("Retesting Frame Centralization"),
            )
          ],
        ));
  }
}
