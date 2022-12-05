import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Notifikasi",
          style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 181, 226, 161),
              fontWeight: FontWeight.w600),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Colors.grey)),
            child: Row(
              children: [
                Expanded(
                    child: Icon(
                  Icons.notifications_active,
                  size: 30,
                  color: Color.fromARGB(255, 181, 226, 161),
                )),
                Expanded(
                    flex: 5,
                    child: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              "Pembayaran Sampah",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              "Hore, pembayaran sampah bulan ini sukses!",
                              style: TextStyle(fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    )),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 5), child: Text("10:00")))
              ],
            ),
          );
        },
      ),
    );
  }
}
