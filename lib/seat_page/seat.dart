import 'package:flutter/material.dart';
import 'package:moovebe/seat_page/widgets/seating.dart';



class Seat extends StatelessWidget {
  const Seat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Padding(
            padding: EdgeInsets.only(top: 22),
            child: Text('KSRTC Swift Scania P-series'),
          ),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width * 0.9,
            color: const Color.fromARGB(255, 45, 44, 44),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 130, top: 20),
                  child: Text(
                    'Rohit Sharma',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 49, left: 29),
                      child: Text(
                        'License:PJ51519161155',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 17,
                      ),
                      child: Image.asset(
                        'assets/image/99-996004_get-driving-directions-car-driver-removebg-preview 1.png',
                        height: MediaQuery.of(context).size.height * 0.10,
                        width: MediaQuery.of(context).size.width * 0.10,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 60, right: 60, top: 80),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 160, top: 10),
                child: Icon(
                  Icons.chair,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  size: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: const [
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                    ],
                  ),
                  Column(
                    children: const [
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                    ],
                  ),
                  Column(
                    children: const [
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                      BusSetIcon(),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
