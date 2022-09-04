import 'package:flutter/material.dart';

class AlarmScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: AlarmCardData(mainLable: "16",subLable1: 'September',subLable2: '10:00 AM',subLable3: '04:00 PM',),
            ),
            SizedBox(height: 2.0,),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: AlarmCardData(mainLable: "22",subLable1: 'September',subLable2: '10:00 AM',subLable3: '04:00 PM',),
            ),
            SizedBox(height: 2.0,),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: BorderRadius.circular(10.0)
              ),
            ),
            SizedBox(height: 2.0,),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: BorderRadius.circular(10.0)
              ),
            ),
          ],
        ),

        SizedBox(height: 41.0,),
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            width: 80,
            height: 80.0,
            child: ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.add, size: 40.0,),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AlarmCardData extends StatelessWidget {
  AlarmCardData({this.mainLable,this.subLable1,this.subLable2,this.subLable3});

final String mainLable;
final String subLable1;
final String subLable2;
final String subLable3;

@override
Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(mainLable, style: TextStyle(fontSize: 45.0, color: Colors.white70),),
      Text("|", style: TextStyle(fontSize: 55.0, color: Colors.white70),),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(subLable1,
            style: TextStyle(fontSize: 15.0, color: Colors.white70),),
          Text(subLable2,
            style: TextStyle(fontSize: 15.0, color: Colors.white70),),
          Text(subLable3,
            style: TextStyle(fontSize: 15.0, color: Colors.white70),),
        ],
      )
    ],
  );
}}
