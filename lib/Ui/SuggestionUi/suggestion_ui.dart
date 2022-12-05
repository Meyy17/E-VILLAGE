import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SugestionScreen extends StatefulWidget {
  SugestionScreen({Key? key}) : super(key: key);

  @override
  State<SugestionScreen> createState() => _SugestionScreenState();
}

class _SugestionScreenState extends State<SugestionScreen> {
  String img = "sjdjs";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 181, 226, 161),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(0))),
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
          child: Text(
            "Tambah Saran",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Saran",
          style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 181, 226, 161),
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(top: 15, left: 20, right: 20),
            padding: EdgeInsets.all(20),
            width: 315,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Colors.grey)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 190,
                        child: Text(
                          "Nama Pengguna",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Hari ini",
                          style: TextStyle(
                              fontSize: 8,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: TextStyle(fontSize: 9),
                      ),
                    ),
                  ],
                ),
                img != ""
                    ? Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        height: 135,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                      )
                    : Container(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 235,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.favorite_outline,
                                size: 18,
                                color: Color.fromARGB(255, 181, 226, 161),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.share,
                                size: 18,
                                color: Color.fromARGB(255, 181, 226, 161),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.share,
                              size: 18,
                              color: Color.fromARGB(255, 181, 226, 161),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        "10:00",
                        style: TextStyle(
                            fontSize: 8,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
