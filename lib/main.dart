import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myapp(),
    ),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: Text("My Card"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.white24,
              backgroundImage: AssetImage("assets/images/persona1.jpeg"),
              //backgroundImage: NetworkImage(
              //    "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=600"),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              "Fiorella de Fátima Guadalupe",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Lobster"),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                  color: Colors.white60,
                  fontSize: 15,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 140.0,
              child: Divider(
                thickness: 1.0,
                //height: 10,
                color: Colors.white60,
                indent: 20.0,
                endIndent: 20,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 14, vertical: 8.0),
              elevation: 18.0,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.indigo,
                ),
                title: Text(
                  "+51-235 2352 125",
                ),
                subtitle: Text("Teléfono"),
                trailing: Icon(
                  Icons.check_circle_outline,
                  color: Colors.indigo,
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 14, vertical: 8.0),
              elevation: 18.0,
              child: ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: Colors.indigo,
                ),
                title: Text("correo@gmail.com"),
                subtitle: Text("Correo electrónico"),
                trailing: Icon(
                  Icons.check_circle_outline_outlined,
                  color: Colors.indigo,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/facebook.png",
                  height: 60,
                ),
                SizedBox(
                  width: 30,
                ),
                Image.asset(
                  "assets/images/twitter.png",
                  height: 60,
                ),
                SizedBox(
                  width: 30,
                ),
                Image.asset(
                  "assets/images/instagram.png",
                  height: 60,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
