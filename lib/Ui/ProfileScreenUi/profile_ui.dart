import 'package:e_villlage/Ui/GetStarted/Login_ui.dart';
import 'package:e_villlage/Ui/NotificationUi/notification_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 185,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 181, 226, 161),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Profile",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(top: 50),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey),
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "Nama Pengguna",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "Nama Lengkap Pengguna",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        children: [
                          const ListTile(
                            leading: Icon(
                              Icons.people,
                              color: Color.fromARGB(255, 181, 226, 161),
                            ),
                            title: Text(
                              "Akun",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 181, 226, 161)),
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.settings,
                              color: Color.fromARGB(255, 181, 226, 161),
                            ),
                            title: Text(
                              "Pengaturan",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 181, 226, 161)),
                            ),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.help,
                              color: Color.fromARGB(255, 181, 226, 161),
                            ),
                            title: Text(
                              "FAQ dan bantuan",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 181, 226, 161)),
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                  (route) => false);
                            },
                            leading: const Icon(
                              Icons.logout,
                              color: Colors.red,
                            ),
                            title: const Text(
                              "Logout",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  margin: const EdgeInsets.only(top: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(18, 0, 0, 0),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const NotificationScreen(),
                                    ));
                              },
                              child: Container(
                                  child: const Icon(
                                Icons.notifications,
                                size: 30,
                              ))))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
