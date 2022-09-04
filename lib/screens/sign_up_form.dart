import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key key,
    this.onPress
  }) : super(key: key);
final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'First Name'),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Last Name'),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
                checkColor: Colors.white70,
              ),
              Text(
                "Lorem ipsum dolor sit amet,\nconsectetuer adipiscing.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            width: double.infinity,
            height: 50.0,
            child: ElevatedButton(
              // focusNode: focusNode3,
              onPressed: onPress,
              child: Text("Sign up", style: TextStyle(
                fontSize: 20.0,
              ),),
              style: ElevatedButton.styleFrom(
                primary:  Colors.blueAccent[100],
                elevation: 5.0,
                //shadowColor: focusNode3.hasFocus ? Colors.lightGreen : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
