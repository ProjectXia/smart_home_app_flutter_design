import 'dart:html';

import 'package:flutter/material.dart';
import 'components/drawer_Selected_Item_CirclularIcon.dart';
import 'screens/main_screen.dart';
import 'screens/alarm_screen.dart';
import 'screens/sign_up_form.dart';
import 'screens/welcome_screen.dart';
import 'screens/setting_screen.dart';
import 'screens/devices_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //default icon selected 'home'
  String selectedIcon = 'home';
  String heading = 'Welcome';
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      body: Row(
        children: <Widget>[
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(right: 50.0),
                height: MediaQuery.of(context).size.height,
                width: 70.0,
                color: Colors.orange,
              ),
              Positioned(
                top: 10,
                left: 15,
                child: Icon(
                  Icons.menu_rounded,
                  size: 40.0,
                  color: Colors.grey.shade200,
                ),
              ),
              DrawerSelectedItemCirclularIcon(
                isSelected: selectedIcon == 'home' ? true : false,
                fromTop: 100.0,
                iconData: Icons.home,
                ontap: () {
                  setState(() {
                    selectedIcon = 'home';
                    heading = 'Welcome';
                    index = 0;
                  });
                },
              ),
              DrawerSelectedItemCirclularIcon(
                isSelected: selectedIcon == 'device' ? true : false,
                fromTop: 200,
                iconData: Icons.perm_device_information,
                ontap: () {
                  setState(() {
                    selectedIcon = 'device';
                    heading = 'Devices';
                    index = 2;
                  });
                },
              ),
              DrawerSelectedItemCirclularIcon(
                isSelected: selectedIcon == 'bell' ? true : false,
                fromTop: 300,
                iconData: Icons.alarm,
                ontap: () {
                  setState(() {
                    selectedIcon = 'bell';
                    heading = 'Alarms';
                    index = 3;
                  });
                },
              ),
              DrawerSelectedItemCirclularIcon(
                isSelected: selectedIcon == 'setting' ? true : false,
                fromTop: 400,
                iconData: Icons.settings,
                ontap: () {
                  setState(() {
                    selectedIcon = 'setting';
                    heading = 'Settings';
                    index = 4;
                  });
                },
              ),
              DrawerSelectedItemCirclularIcon(
                isSelected: selectedIcon == 'info' ? true : false,
                fromTop: 500,
                iconData: Icons.info_outline,
                ontap: () {
                  setState(() {
                    selectedIcon = 'info';
                    heading = 'Information';
                    index = 5;
                  });
                },
              ),
            ],
          ),
          IndexedStack(
            index: index,
            children: [
              MainBody(
                heading: heading,
                widget: SignUpForm(
                  onPress: () {
                    setState(() {
                      index = 1;
                    });
                  },
                ),
              ),
              MainBody(
                heading: heading,
                widget: WelcomeScreen(),
              ),
              MainBody(
                heading: heading,
                widget: DeviceScreen(),
              ),
              MainBody(heading: heading, widget: AlarmScreen(),),
              MainBody(heading: heading, widget: SettingScreen(),),
              MainBody(heading: heading, widget: Text("Information",style: TextStyle(fontSize: 25.0,color: Colors.white),),),
              // MainBody(heading: heading),
            ],
          ),
        ],
      ),
    );
  }
}
