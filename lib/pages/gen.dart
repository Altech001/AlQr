// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:alqr/components/random.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class RandScreen extends StatefulWidget {
  RandScreen({super.key});

  @override
  State<RandScreen> createState() => _RandScreenState();
}

class _RandScreenState extends State<RandScreen> {
  TextEditingController _editingController = TextEditingController();
String data = '' ;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Generate the Qrcode.'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GenertWeb(
            controller: _editingController,
            hintText: 'Insert your prompt',
            labelText: 'Enter you Text:',
          ),
          SizedBox(height: 20),
         GestureDetector(
          onTap: (){
            setState(() {
              data = _editingController.text;
            });
          },
          child:  Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueAccent,
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
          child: Text('Generate Code'),
        ),
         ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.secondary),
            child: PrettyQr(
              data: '$data',
              size: 200,
            ),
          ),
        ],
      ),
    );
  }
}
