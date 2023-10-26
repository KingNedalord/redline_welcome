import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'main.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController loginContr = TextEditingController();
  TextEditingController passwordContr = TextEditingController();

  bool Isvisibile = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBEDEA),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.08),
          Image.asset(
            "assets/Red Line.png",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          const Text(
            "Login",
            style: TextStyle(fontSize: 40, fontFamily: "EBG"),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: loginContr,
              decoration: const InputDecoration(
                  labelText: "Login",
                  border: OutlineInputBorder(
                      gapPadding: 20,
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: passwordContr,
              obscureText: Isvisibile,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (Isvisibile == false) {
                          Isvisibile = true;
                        } else {
                          Isvisibile = false;
                        }
                        setState(() {});
                      },
                      icon: Icon(Isvisibile == true
                          ? Icons.visibility_off
                          : Icons.visibility )),
                  labelText: "Password",
                  border: OutlineInputBorder(
                      gapPadding: 20,
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
          ),
          const SizedBox(height: 10),
          ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: MaterialButton(
                onPressed: () async {
                  // if (loginContr.value.text != "" &&
                  //     passwordContr.value.text != "") {
                  //   // SharedPreferences pref =
                  //   // await SharedPreferences.getInstance();
                  //   // text = await pref.setBool('txt', true);
                  //
                  //   // Information information = Information(
                  //       name: loginContr.value.text,
                  //       password: passwordContr.value.text,
                  //       email: "example@gmail.com",
                  //       date_of_birth: "00-00-0000",
                  //       address: "-");
                  //   box.add(information);  print(box.get("info"));
                  //   Navigator.push(context,
                  //       CupertinoPageRoute(builder: (_) => Main_Page()));
                  // } else {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //       const SnackBar(content: Text("All fields must be filled")));
                  //   SharedPreferences pref =
                  //   await SharedPreferences.getInstance();
                  //   text = await pref.setBool('txt', false);
                  // }
                },
                color: Color(0xFFFF785B),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Let's go!",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: "EBG")),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
