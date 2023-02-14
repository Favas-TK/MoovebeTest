import 'package:flutter/material.dart';
import 'package:moovebe/driver_List/driverList.dart';


class ContFeiled extends StatelessWidget {
  const ContFeiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 40),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              height: 230,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28, top: 19),
                    child: Text(
                      'Bus',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 26, top: 57),
                    child: Text(
                      'Manage your Bus',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 40),
                    child: Image.asset(
                      'assets/image/image 2.png',
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.4,
                      // /  width: 30,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DriverList(),
                  ));
            },
            child: Container(
              padding: const EdgeInsets.only(left: 18),
              child: Container(
                height: 230,
                width: 170,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 62, 61, 61),
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 28, top: 19),
                      child: Text(
                        'Driver',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 26, top: 57),
                      child: Text(
                        'Manage your Driver',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80, left: 40),
                      child: Image.asset(
                        'assets/image/99-996004_get-driving-directions-car-driver-removebg-preview 1.png',
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.4,
                        // /  width: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
