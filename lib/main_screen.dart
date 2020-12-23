import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({this.controller});

  final controller;

  @override
  Widget build(BuildContext context) {
    var stream = controller.stream;

    return Center(
      child: Column(
        children: [
          StreamBuilder(
            stream: stream,
            builder: (BuildContext context, snapshot) {
              if (!snapshot.hasData) {
                return Column(
                  children: [
                    CircularProgressIndicator(),
                    Text(
                        'Waiting for you to press a button to add data to the stream')
                  ],
                );
              }
              Color boxColor = snapshot.data;
              return Container(
                height: 100,
                width: 300,
                color: boxColor,
              );
              // return Text(contacts ?? 'Hello');
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    controller.add(Colors.red);
                  },
                  color: Colors.red,
                  textColor: Colors.white70,
                  child: Text(
                    'red',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    controller.add(Colors.blue);
                  },
                  color: Colors.blue,
                  textColor: Colors.white70,
                  child: Text(
                    'blue',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    controller.add(Colors.green);
                  },
                  color: Colors.green,
                  textColor: Colors.white70,
                  child: Text(
                    'green',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
