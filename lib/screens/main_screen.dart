import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    Key key,
    @required this.heading,@required this.widget
  }) : super(key: key);

  final String heading;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 200,
      height: MediaQuery.of(context).size.height,
      color: Colors.deepPurple[400],
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
              width: double.infinity,
              child: Text(
                'Smart Home',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              height: 85.0,
            ),
            Text(
              heading,
              style: TextStyle(
                color: Colors.blueAccent[100],
                fontSize: 45.0,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 20.0,
            ),
            heading != 'Settings' ?
            Text(
              "Lorem ipsum dolor sit amet, "
                  "\nconsecteture adipiscing elit,"
                  "\ndiam nonummy nibh euismod "
                  "\ntincidunt ut laoreet dolore \n"
                  "magna aliquam erat volutpat.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20.0,
              ),
            )
            : CircleAvatar(
              radius: 120.0,
              backgroundColor: Colors.blueAccent[100],
              child: CircleAvatar(
                radius: 115.0,
                backgroundColor: Colors.deepPurple[400],
                child: Text("52%",style: TextStyle(
                  fontSize: 70.0,
                ),),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            widget,
          ],
        ),
      ),
    );
  }
}