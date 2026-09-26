import 'package:clutch/view/auth/login.dart';
import 'package:clutch/widgets/buttom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

TextEditingController mail = TextEditingController();

class _ForgetState extends State<Forget> {
  final GlobalKey<FormState> fformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: fformKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forgot Your Password ?",
                  style: GoogleFonts.aBeeZee(fontSize: 29),
                ),
                Align(alignment: Alignment.topLeft, child: Text(" Email")),
                SizedBox(height: 10),
                TextFormField(
                  controller: mail,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is Required";
                    }
                    if (!(value.contains("@") && value.contains("."))) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter your email",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                  ),
                ),
                SizedBox(height: 15),
                // SizedBox(
                //   height: 60,
                //   width: 300,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Colors.blue,
                //       side: BorderSide(color: Colors.black),
                //     ),
                //     onPressed: () {
                //       if (formkey.currentState!.validate()) {}
                //     },
                //     child: Text(
                //       "Submit",
                //       style: TextStyle(color: Colors.white, fontSize: 19),
                //     ),
                //   ),
                // ),
                PrimaryButtons(
                  name: "Submit",
                  buttoncolor: Colors.black,
                  nav: () {
                    if (fformKey.currentState!.validate()) {}
                  },
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                    "← back to login",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
