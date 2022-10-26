import 'package:codigo2_ui_stack/pages/init_page.dart';
import 'package:codigo2_ui_stack/widgets/circle_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login2Page extends StatefulWidget {
  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  bool isInvisible = true;

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffFBF5FF),
      body: Stack(
        children: [
          //Fondo
          Stack(
            children: [
              Positioned(
                right: -100,
                top: -80,
                child: CircleWidget(
                  radius: height * 0.20,
                  colors: [
                    Color(0xffD94E8E),
                    Color(0xffE98DB7),
                  ],
                ),
              ),
              Positioned(
                bottom: -130,
                left: -100,
                child: CircleWidget(
                  radius: 140,
                  colors: [
                    Color(0xff564293),
                    Color(0xff9D8AD9),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                top: 40,
                child: CircleWidget(
                  radius: 22,
                  colors: [
                    Color(0xffD94E8E),
                    Color(0xffE98DB7),
                  ],
                ),
              ),
              Positioned(
                top: height * 0.4,
                right: width * 0.12,
                child: CircleWidget(
                  radius: 16,
                  colors: [
                    Color(0xff564293),
                    Color(0xff9D8AD9),
                  ],
                ),
              ),
            ],
          ),
          //Formulario

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create Your Account!",
                    style: GoogleFonts.poppins(
                      color: Color(0xff412472),
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email address",
                      prefixIcon: Icon(Icons.email, color: Color(0xff72558F)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff72558F),
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    obscureText: isInvisible,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff72558F),
                        ),
                      ),
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xff72558F),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye,
                            color: Color(0xff72558F)),
                        onPressed: () {
                          isInvisible = !isInvisible;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Container(
                      height: 56.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(40.0),
                        boxShadow: [
                          BoxShadow(
                              color: const Color(0xffD94E8E).withOpacity(0.65),
                              offset: const Offset(0,20),
                              blurRadius: 12.0),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xffE98DB7),
                            Color(0xffD94E8E),
                          ],
                        ),
                      ),
                      child: MaterialButton(
                        child: Text(
                          "Create Account",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        textColor: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(40.0),
                        // ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InitPage()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
