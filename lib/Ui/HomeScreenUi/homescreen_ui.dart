import 'package:e_villlage/Ui/NotificationUi/notification_ui.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String user = "user";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hai, $user!",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 181, 226, 161)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Selamat Pagi ",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(18, 0, 0, 0),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationScreen(),
                                      ));
                                },
                                child: Container(
                                    child: Icon(Icons.notifications))))
                      ],
                    ))
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 134,
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 181, 226, 161),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Current Balance",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Rp.143,421.39",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 181, 226, 161)),
                            ),
                            Container(
                              width: 60,
                              child: Text(
                                "Bayar Sampah",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 181, 226, 161),
                                    fontSize: 8),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 181, 226, 161)),
                            ),
                            Container(
                              width: 60,
                              child: Text(
                                "Bayar Sampah",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 181, 226, 161),
                                    fontSize: 8),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 181, 226, 161)),
                            ),
                            Container(
                              width: 60,
                              child: Text(
                                "Bayar Sampah",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 181, 226, 161),
                                    fontSize: 8),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(255, 181, 226, 161)),
                            ),
                            Container(
                              width: 60,
                              child: Text(
                                "Bayar Sampah",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 181, 226, 161),
                                    fontSize: 8),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                activity(),
                highlight()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget activity() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Text(
                    "Aktivitas",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Lihat lainnya",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ))
            ],
          ),
          Container(
            height: 80,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 60,
                  margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(18, 0, 0, 0),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  width: 231,
                  child: Row(
                    children: [
                      Container(
                          width: 10,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 181, 226, 161),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Pembayaran PDAM",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Bulan : Agustus",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 7),
                          child: InkWell(
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(18, 0, 0, 0),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  width: 231,
                  child: Row(
                    children: [
                      Container(
                          width: 10,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 181, 226, 161),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          width: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Pembayaran PDAM",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Bulan : Agustus",
                                    style: TextStyle(
                                        fontSize: 9,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 7),
                          child: InkWell(
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget highlight() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Highlight",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(top: 15),
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
          ),
        ],
      ),
    );
  }
}
