import 'package:clutch/view/auth/login.dart';
import 'package:clutch/widgets/buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

bool passwordvis = false;
bool conpasswordvis = false;
final TextEditingController pass1 = TextEditingController();
final TextEditingController pass2 = TextEditingController();
final TextEditingController emaill = TextEditingController();
final TextEditingController username = TextEditingController();
final TextEditingController firstname = TextEditingController();
final TextEditingController secname = TextEditingController();

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> sformkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: sformkey,
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.bottomRight,
                    colors: [
                      Colors.black,
                      const Color.fromARGB(158, 0, 0, 0),
                      Colors.black,
                      const Color.fromARGB(197, 0, 0, 0),
                    ],
                  ),
                ),
                height: 120,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Sign up",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Create your account",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: SizedBox(
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text("First Name"),
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return "First Name is required";
                                }
                                return null;
                              },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: firstname,
                              decoration: InputDecoration(
                                hint: Text(
                                  "Ali",
                                  style: TextStyle(color: Color(0xFF7E8A97)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text("Second Name"),
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return "Second Name is required";
                                }
                                return null;
                              },
                              controller: secname,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                hint: Text(
                                  "Rasal",
                                  style: TextStyle(color: Color(0xFF7E8A97)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text("User Name"),
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: username,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return "Username is required";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hint: Text(
                                  "Rasal",
                                  style: TextStyle(color: Color(0xFF7E8A97)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text("Email"),
                            ),

                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: emaill,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return "Email is required";
                                }
                                if (!RegExp(
                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                ).hasMatch(value.trim())) {
                                  return "Enter a valid email address";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hint: Text(
                                  "example@gmail.com",
                                  style: TextStyle(color: Color(0xFF7E8A97)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text("Number"),
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.phone,

                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(10),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter phone number';
                                }
                                if (value.length != 10) {
                                  return 'Phone number must be 10 digits';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                // prefixText: '+91 ',
                                // prefixStyle: TextStyle(fontSize: 17),
                                // contentPadding: const EdgeInsets.symmetric(
                                //   horizontal: 12,
                                //   vertical: 14,
                                // ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text("Password"),
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: pass1,
                              obscureText: passwordvis,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Password is required";
                                }
                                if (value.length < 8) {
                                  return "Minimum 8 characters";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      passwordvis = !passwordvis;
                                    });
                                  },
                                  icon: passwordvis
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Text("Confirm Password"),
                            ),
                            TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: pass2,
                              obscureText: conpasswordvis,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Confirm password";
                                }
                                if (value != pass1.text) {
                                  return "Passwords do not match";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      conpasswordvis = !conpasswordvis;
                                    });
                                  },
                                  icon: conpasswordvis
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),

                            SizedBox(height: 20),
                            PrimaryButtons(
                              name: 'Sign up',
                              buttoncolor: Colors.black,
                              nav: () {
                                if (sformkey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(),
                                    ),
                                  );
                                }
                              },
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account? ",
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(height: 50),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Login(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
