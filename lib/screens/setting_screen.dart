import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: 16.0,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, "
                "\nconsecteture adipiscing elit",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 100,
              child: Row(
                children: [
                  CardDesign(
                    icon1: Icons.light_mode_outlined,
                    subLable1: 'ENERGY',
                    isActive: true,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CardDesign(
                    icon1: Icons.ac_unit,
                    subLable1: 'TEMPRATURE',
                    isActive: false,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100,
              child: Row(
                children: [
                  CardDesign(
                    icon1: Icons.water,
                    subLable1: 'WATER',
                    isActive: false,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  CardDesign(
                    icon1: Icons.wifi,
                    subLable1: 'ENTERTAINMENT',
                    isActive: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CardDesign extends StatelessWidget {
  CardDesign({this.icon1, this.subLable1, this.isActive});

  final IconData icon1;
  final String subLable1;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: isActive ? Colors.blueAccent[100] : Colors.deepPurple[300],
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon1,
              size: 45.0,
              color: isActive ? Colors.white70 : Colors.black87,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              subLable1,
              style: TextStyle(
                fontSize: 16.0,
                  color: isActive ? Colors.white70 : Colors.black87
              ),
            ),
          ],
        ),
      ),
    );
  }
}
