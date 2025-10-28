import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Methode MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Terbaru",
      home: MyHome(),
    );
  }
}

// method MyHome
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Latihan Aplikasi",
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 2, 2),
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        actions: [
          Icon(Icons.person, color: const Color.fromARGB(255, 255, 0, 0)),
          SizedBox(width: 10),
          Icon(Icons.account_tree, color: const Color.fromARGB(255, 255, 0, 0)),
          SizedBox(width: 10),
          Icon(Icons.ac_unit, color: const Color.fromARGB(255, 255, 0, 0)),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            alignment: Alignment.center,
            margin: EdgeInsets.all(15),

            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  const Color.fromARGB(255, 33, 1, 129),
                  const Color.fromARGB(255, 41, 77, 31),
                ],
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/joker.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),

            child: Text(
              "Torahh..!!",

              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 0, 0),
              ),
            ),
          ),

          Container(
            width: 120,
            height: 120,
            alignment: Alignment.center,
            margin: EdgeInsets.all(15),

            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color.fromARGB(255, 17, 101, 17),
                  const Color.fromARGB(255, 15, 9, 147),
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),

            child: Text(
              "Hii..!!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 0, 0),
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          Transform.rotate(
            angle: 0.2,
            child: Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              margin: EdgeInsets.all(15),

              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color.fromARGB(255, 25, 13, 141),
                    const Color.fromARGB(255, 12, 120, 0),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),

              child: Text(
                "Jinzou..!!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 0, 0),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),

          Transform.rotate(
            angle: -0.2,
            child: Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              margin: EdgeInsets.all(15),

              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color.fromARGB(255, 23, 120, 12),
                    const Color.fromARGB(255, 7, 10, 147),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage("assets/images/joker.jpg"),
                  fit: BoxFit.cover,
                ),
              ),

              child: Text(
                "Sen-ii..!!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 0, 0),
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}