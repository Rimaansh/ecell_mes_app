import 'package:flutter/material.dart';
import 'eventspage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.redAccent, Colors.grey],
            ),
          ),
        child: EventsPage(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          leading: Container(
            padding: EdgeInsets.all(20),
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              // ignore: unnecessary_const
              image: const DecorationImage(
                image: AssetImage('images/meslogo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ), //mes logo
          leadingWidth: 60,
          title: Row(
            children: const [
              Padding(padding: EdgeInsets.fromLTRB(20, 0, 0, 0)),
              Expanded(
                child: Text(
                  '***id of the user***',
                  style: TextStyle(fontSize: 15),
                ), // middle text
              ),
              Icon(
                Icons.account_circle,
                size: 40,
                color: Colors.white,
              ), // right icon
            ],
          ),
        ),
      ),
    );
  }
}
