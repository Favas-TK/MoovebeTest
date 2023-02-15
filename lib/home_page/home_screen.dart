import 'package:flutter/material.dart';
import 'package:moovebe/home_page/widgets/list_widgets.dart';
import 'package:moovebe/seat_page/seat.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
          title: Stack(children: [
            const Padding(
              padding: EdgeInsets.only(left: 205, top: 7),
              child:
                  Icon(Icons.arrow_drop_down, size: 50, color: Colors.yellow),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'moov',
                    style: TextStyle(fontSize: 36, color: Colors.white),
                  ),
                  Text('be',
                      style: TextStyle(fontSize: 36, color: Colors.yellow))
                ],
              ),
            ),
          ]),
        ),
      ),
      body: ListView(
        children: [
          const ListField(),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              '21 Buses Found',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: 9,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Seat(),
                        ));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.11,
                    color: const Color.fromARGB(255, 217, 214, 214),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.8,
                              color: const Color.fromARGB(255, 248, 246, 246)),
                        ),
                        Image.asset(
                          'assets/image/busleadingimg.png',
                          height: MediaQuery.of(context).size.height * 0.24,
                          width: MediaQuery.of(context).size.width * 0.24,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 110, top: 9),
                          child: Text('KSRTC'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 110, top: 38),
                          child: Text(
                            'KSRTC Swift Scania P-series',
                            style: TextStyle(fontSize: 11),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 279, top: 15),
                            child: Container(
                              height: 35,
                              width: 80,
                              color: Colors.red,
                              child: const Padding(
                                padding: EdgeInsets.all(9),
                                child: Text(
                                  'Manage',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
