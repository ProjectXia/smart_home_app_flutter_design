import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int height = 25;
  bool isButtonActive = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 500,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbColor: Colors.orange,
                    overlayColor: Colors.deepPurple[300],
                    inactiveTrackColor: Colors.deepPurple[300],
                    activeTrackColor: Colors.blueAccent[100],
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
                    trackHeight: 20.0,
                  ),
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Slider(
                      value: height.toDouble(),
                      min: 0.0,
                      max: 100.0,
                      label: '$height',
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                    ),
                  ),
                ),
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height - 500,
              //   width: 70.0,
              //   color: Colors.lightGreen,
              //     child:
              //   ),
              Container(
                margin: EdgeInsets.only(top: 40.0),
                height: MediaQuery.of(context).size.height - 500,
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: RoundedButtonWithLable(onPress: (){},isButtonActive: isButtonActive,value: '$height',textLable: "Temprature",),),
                    Expanded(child: RoundedButtonWithLable(onPress: (){},isButtonActive: isButtonActive,value: '$height',textLable: "Light",),),
                    Expanded(child: RoundedButtonWithLable(onPress: (){},isButtonActive: isButtonActive,value: '$height',textLable: "Signal",),),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            width: 80,
            height: 80.0,
            child: ElevatedButton(
              onPressed: (){},
              child: Icon(Icons.check,size: 40.0,),
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

class RoundedButtonWithLable extends StatelessWidget {

  RoundedButtonWithLable({this.isButtonActive,this.onPress,this.value,this.textLable});

  final bool isButtonActive;
  final Function onPress;
  final String value;
  final String textLable;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 180,
            height: 40.0,
            child: ElevatedButton(
              onPressed: isButtonActive
                  ? onPress
                  : null,
              child: Text(textLable),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: 130.0,
            height: 40.0,
            child: Text(
              value,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.blueAccent[100],
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
