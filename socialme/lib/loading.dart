import 'package:flutter/material.dart';

class loading extends StatelessWidget {
  loading();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
            width: double.infinity,
            margin: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 30.0, bottom: 5.0),
            child: Text(
              "The",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            )),
        Container(
            width: double.infinity,
            margin: EdgeInsets.zero,
            child: Text(
              "Social Me",
              style: TextStyle(fontSize: 39),
              textAlign: TextAlign.center,
            )),
        Container(
            width: double.infinity,
            child: Text(
              "1",
              style: TextStyle(fontSize: 100, color: Colors.white),
              textAlign: TextAlign.center,
            )),
        Container(
            child: Center(
          child: Image.asset(
            'images/loading1Img.png',
            height: 100,
            width: 100,
          ),
        )),
        Container(
            margin: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 30.0, bottom: 20.0),
            child: Text(
              "Privacy Incorporated Communication Services",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            )),
        Container(child: Text("Loader"))
      ],
    );
  }
}
