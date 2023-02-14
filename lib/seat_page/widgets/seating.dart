import 'package:flutter/material.dart';

class BusSetIcon extends StatelessWidget {
  const BusSetIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Icon(
        Icons.chair,
        color: Color(0xffed3839),
        size: 30,
      ),
    );
  }
}