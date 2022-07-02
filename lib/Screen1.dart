import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Get Started")),
        body: Container(
          child: Center(
              child: ListView(
            children: [
              Align(
                child: Container(
                    child: Text(
                  "Training",
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                )),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      alignment: Alignment.center,
                      child: Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2017/06/22/02/16/computer-icon-2429310_960_720.png'),
                      ))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      child: ElevatedButton(
                    child: Text("Get Starterd"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Login();
                      }));
                    },
                  )))
            ],
          )),
        ));
  }
}
