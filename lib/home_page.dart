import 'package:flutter/material.dart';
import 'package:plant_page/left_body.dart';
import 'package:plant_page/new_left.dart';
import 'package:plant_page/new_right.dart';
import 'right_body.dart';
import 'slider_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              SizedBox(
                width: 80,
              ),
              Text(
                'Corner Field',
                style: TextStyle(
                  color: Colors.black,
                ),
              )
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: <Widget>[
              Row(children: [
                SizedBox(
                  width: 135,
                ),
                Text(
                  "Zone 3",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 125,
                ),
                Icon(
                  Icons.clear_rounded,
                  color: Colors.grey,
                ),
              ]),
              Row(
                children: [
                  SizedBox(
                    width: 98,
                  ),
                  Text(
                    "Soil Water Status",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  LeftBody(), //Container
                  SizedBox(
                    width: 5,
                  ), //SizedBox
                  RightBody() //Container
                ], //<Widget>[]
              ),
              Column(
                children: [
                  Text(
                    "Forecast - Next 0 Days",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SliderPage(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  NewLeft(),//Container
                  SizedBox(
                    width: 5,
                  ), //SizedBox
                  NewRight(), //Container
                ], //<Widget>[]
              ),

            ],
          ),
        ));
  }
}






