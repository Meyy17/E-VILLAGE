import 'package:e_villlage/Ui/EventUi/event_ui.dart';
import 'package:e_villlage/Ui/NotificationUi/notification_ui.dart';
import 'package:e_villlage/Ui/RiwayatUi/riwayat_ui.dart';
import 'package:e_villlage/Ui/SuggestionUi/suggestion_ui.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String user = "Pengguna";
  String img = "s";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
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
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 181, 226, 161)),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
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
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              boxShadow: const [
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
                                            const NotificationScreen(),
                                      ));
                                },
                                child: Container(
                                    child: const Icon(Icons.notifications))))
                      ],
                    ))
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 181, 226, 161),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(top: 40),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 100,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(79, 255, 255, 255),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(150),
                                  bottomLeft: Radius.circular(150))),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(79, 255, 255, 255),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(150),
                                  topRight: Radius.circular(150))),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: 83,
                        child: Row(
                          children: [
                            Container(
                              width: 220,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "Saldo anda",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "Rp.143,421.39",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 22,
                        right: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Color.fromARGB(255, 181, 226, 161),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 181, 226, 161)),
                            ),
                            Container(
                              width: 60,
                              child: const Text(
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
                              margin: const EdgeInsets.all(5),
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 181, 226, 161)),
                            ),
                            Container(
                              width: 60,
                              child: const Text(
                                "Bayar Pdam",
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SugestionScreen(),
                              ));
                        },
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 181, 226, 161)),
                            ),
                            Container(
                              width: 60,
                              child: const Text(
                                "Saran",
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
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EventScreen(),
                              ));
                        },
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              height: 64,
                              width: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 181, 226, 161)),
                            ),
                            Container(
                              width: 60,
                              child: const Text(
                                "Event",
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
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Row(
                children: const [
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RiwayatScreen(),
                          ));
                    },
                    child: const Text(
                      "Lihat lainnya",
                      style: TextStyle(color: Colors.grey),
                    ),
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
                  margin: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
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
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 181, 226, 161),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                          )),
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          width: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Pembayaran PDAM",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
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
                          child: const InkWell(
                            child: Icon(Icons.arrow_forward_ios_rounded),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
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
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 181, 226, 161),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                          )),
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          width: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Pembayaran PDAM",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
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
                          margin: const EdgeInsets.only(left: 7),
                          child: const InkWell(
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
      margin: const EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                "Highlight",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(
                    top: 15,
                  ),
                  padding: EdgeInsets.all(20),
                  width: 315,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
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
                              margin: const EdgeInsets.only(left: 10),
                              width: 190,
                              child: const Text(
                                "Nama Pengguna",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              child: const Text(
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
                            child: const Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: TextStyle(fontSize: 9),
                            ),
                          ),
                        ],
                      ),
                      img != ""
                          ? Container(
                              margin:
                                  const EdgeInsets.only(top: 20, bottom: 20),
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
                            margin: const EdgeInsets.only(top: 10),
                            width: 235,
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.favorite_outline,
                                      size: 18,
                                      color: Color.fromARGB(255, 181, 226, 161),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.share,
                                      size: 18,
                                      color: Color.fromARGB(255, 181, 226, 161),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.reply_all,
                                    size: 18,
                                    color: Color.fromARGB(255, 181, 226, 161),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 5),
                            child: const Text(
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
