import 'package:clutch/view/auth/forgot.dart';
import 'package:clutch/view/auth/signup.dart';
import 'package:clutch/view/bottom-nav/bottom-nav.dart';
import 'package:clutch/widgets/buttom.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

bool passwordvis = false;
bool rememberMe = false;
TextEditingController lpass = TextEditingController();
TextEditingController lemail = TextEditingController();

class _LoginState extends State<Login> {
  final GlobalKey<FormState> lformkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: lformkey,
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
                height: 220,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Log in",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "please sign in to your existing account",
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
                      child: Column(
                        children: [
                          Align(
                            alignment: AlignmentGeometry.topLeft,
                            child: Text("EMAIL"),
                          ),
                          TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: lemail,
                            validator: (value) {
                              if (value == null || value.trim().isEmpty) {
                                return "Email is required";
                              }

                              if (!RegExp(
                                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                              ).hasMatch(value.trim())) {
                                return "Enter a valid email";
                              }

                              return null;
                            },
                            decoration: InputDecoration(
                              hint: Text(
                                "example@gmail.com",
                                style: TextStyle(color: Color(0xFF7E8A97)),
                              ),
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: AlignmentGeometry.topLeft,
                            child: Text("PASSWORD"),
                          ),
                          TextFormField(
                            controller: lpass,
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
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: rememberMe,
                                    onChanged: (value) {
                                      setState(() {
                                        rememberMe = !rememberMe;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Remember me",
                                    style: TextStyle(color: Color(0xFF7E8A97)),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Forget(),
                                    ),
                                  );
                                },
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "Forgot password?",
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          PrimaryButtons(
                            name: "Login",
                            buttoncolor: Colors.black,
                            nav: () {
                              if (lformkey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BottomNav(),
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
                                "Don't have a account?",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF7E8A97),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Signup(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "  Sign up",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Or",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF7E8A97),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                sclbutton(
                                  pic: Icons.facebook,
                                  paint: Colors.blueAccent,
                                  nav: () {},
                                ),
                                sclbutton(
                                  pic: Icons.ac_unit_rounded,
                                  paint: Colors.blue,
                                  nav: () {},
                                ),
                                sclbutton(
                                  pic: Icons.apple,
                                  paint: Colors.black,
                                  nav: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
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

class sclbutton extends StatelessWidget {
  final IconData pic;
  final Color paint;
  final VoidCallback nav;
  const sclbutton({
    super.key,
    required this.pic,
    required this.paint,
    required this.nav,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: nav,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: paint,
        child: Icon(pic, color: Colors.white),
      ),
    );
  }
}
