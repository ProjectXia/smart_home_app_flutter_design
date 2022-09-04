import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class DeviceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'User Name',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  foregroundColor: Colors.white70,
                  child: Icon(
                    Icons.people_alt_outlined,
                  ),
                ),
              ),
              suffixIcon: Icon(Icons.more_vert,color: Colors.grey.shade400,),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'User Name',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  foregroundColor: Colors.white70,
                  child: Icon(
                    Icons.people_alt_outlined,
                  ),
                ),
              ),
              suffixIcon: Icon(Icons.more_vert,color: Colors.grey.shade400,),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'User Name',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  foregroundColor: Colors.white70,
                  child: Icon(
                    Icons.people_alt_outlined,
                  ),
                ),
              ),
              suffixIcon: Icon(Icons.more_vert,color: Colors.grey.shade400,),
            ),

          ),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'User Name',
              prefixIcon: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  foregroundColor: Colors.white70,
                  child: Icon(
                    Icons.people_alt_outlined,
                  ),
                ),
              ),
              suffixIcon: Icon(Icons.more_vert,color: Colors.grey.shade400,),
            ),
          ),
          SizedBox(
            height: 179.0,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 80,
              height: 80.0,
              child: ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.add,
                  size: 40.0,
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
