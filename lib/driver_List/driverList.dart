import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moovebe/driver_List/add_driver.dart';


class DriverList extends StatelessWidget {
  const DriverList({super.key});

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
            child: Text('DriverList'),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: 26,
            right: 26,
            top: MediaQuery.of(context).size.height * 0.75),
        child: SizedBox(
          height: 64,
          child: GestureDetector(
            onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (context) => AddDriver(),
                )),
            child: Card(
              shadowColor: Colors.redAccent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Color.fromARGB(255, 247, 186, 182),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.red,
              child: Column(
                children: [
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(
                        left: 97,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Add Driver',
                            style: GoogleFonts.abhayaLibre(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
