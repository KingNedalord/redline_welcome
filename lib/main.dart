import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redline_profile/login_page.dart';



void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFFFF5E0),
                      Color(0xFFFF6969),
                      Color(0xFFFF6969),
                      Color(0xFF141E46),
                    ])),
            child: Column(
                children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.18),
              Image.asset("assets/Red Line.png"),
              SizedBox(height: MediaQuery.of(context).size.height * 0.3),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Welcome to Red Line",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 23,
                          color: Colors.white,
                        )),
                    const Text(
                        "Order the best meals in Lagos and have \nthem delivered to your doorstep in little \nor no time.Doesn't that sound delicious",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                    ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(40),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(context, CupertinoPageRoute(builder: (_) => LogIn()));
                          },
                          color: Colors.white,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.height * 0.06,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Next",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.grey)),
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ])));
  }
}
