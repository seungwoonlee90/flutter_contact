import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child :Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page),
            ],
          ),
        )
    );
  }
}