import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Operation extends StatelessWidget {
  const Operation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Operation'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.green[50]),
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.cyan,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gabriela'),
                    Text('teste@gmail.com'),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
