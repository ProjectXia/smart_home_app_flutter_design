
import 'package:flutter/material.dart';

class DrawerSelectedItemCirclularIcon extends StatelessWidget {
  DrawerSelectedItemCirclularIcon(
      {@required this.isSelected,
        @required this.fromTop,
        @required this.iconData,
        this.ontap});

  final bool isSelected;
  final double fromTop;
  final IconData iconData;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: fromTop,
      left: isSelected ? 30 : 10,
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.only(top: 14.0, bottom: 14.0, right: 10.0),
          decoration: isSelected
              ? BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(110.0),
              bottomRight: Radius.circular(110.0),
            ),
          )
              : BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(110.0),
              bottomRight: Radius.circular(110.0),
            ),
          ),
          child: CircleAvatar(
            backgroundColor: Colors.deepPurple[400],
            foregroundColor: isSelected ? Colors.blueAccent[100] : Colors.white,
            radius: isSelected ? 35.0 : 25.0,
            child: Icon(
              iconData,
              size: isSelected ? 50.0 : 35.0,
            ),
          ),
        ),
      ),
    );
  }
}