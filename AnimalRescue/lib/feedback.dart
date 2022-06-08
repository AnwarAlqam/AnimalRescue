import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class feedback extends StatelessWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thank you', textAlign: TextAlign.center,),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(100)),
          Center(
            child: Text('Thank you for\nleaving your feedback!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

}