import 'package:e_villlage/Ui/Widget/Navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool ishide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Masuk",
          style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 181, 226, 161),
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("Asset/Image/amico.png"),
                    fit: BoxFit.fitHeight)),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Form(child: inputdesign()),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {},
                    child: Text(
                      "Lupa Password?",
                      style:
                          TextStyle(color: Color.fromARGB(255, 181, 226, 161)),
                    )),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 20, right: 20, top: 100),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBotBar(),
                      ),
                      (route) => false);
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 0, primary: Color.fromARGB(255, 181, 226, 161))),
          )
        ],
      ),
    );
  }

  Widget inputdesign() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          child: TextFormField(
              controller: email,
              validator: (val) =>
                  val!.isEmpty ? 'Mohon Masukkan Email Anda!' : null,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(40, 180, 226, 161),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'masukan email anda')),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: TextFormField(
              controller: password,
              validator: (val) =>
                  val!.isEmpty ? 'Mohon Masukkan Password Anda!' : null,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ishide = true;
                        });
                      },
                      icon: Icon(ishide
                          ? Icons.remove_red_eye_sharp
                          : Icons.remove_red_eye)),
                  filled: true,
                  fillColor: Color.fromARGB(40, 180, 226, 161),
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'masukan password')),
        ),
      ],
    );
  }
}
