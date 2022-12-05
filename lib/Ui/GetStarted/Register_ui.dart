import 'package:e_villlage/Ui/GetStarted/Login_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordconfrimation = TextEditingController();
  bool ishide = false;
  bool ishideconfirm = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Daftar",
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
            height: 50,
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                      (route) => false);
                },
                child: Text(
                  "Sign Up",
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
          margin: EdgeInsets.only(top: 5),
          child: TextFormField(
              controller: name,
              validator: (val) =>
                  val!.isEmpty ? 'Mohon Masukkan Nama Lengkap!' : null,
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
                  prefixIcon: Icon(Icons.people),
                  hintText: 'masukan nama lengkap')),
        ),
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
        Container(
          margin: EdgeInsets.only(top: 15),
          child: TextFormField(
              controller: passwordconfrimation,
              validator: (val) =>
                  val!.isEmpty ? 'Mohon Konfirmasi Passeord Anda!' : null,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          ishideconfirm = true;
                        });
                      },
                      icon: Icon(ishideconfirm
                          ? Icons.remove_red_eye_sharp
                          : Icons.remove_red_eye)),
                  fillColor: Color.fromARGB(40, 180, 226, 161),
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'konfirmasi password')),
        ),
      ],
    );
  }
}
