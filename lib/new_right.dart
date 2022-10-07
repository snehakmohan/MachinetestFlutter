import 'package:flutter/material.dart';

class NewRight extends StatelessWidget {
  const NewRight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width:170,
        height: 210,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.orangeAccent,
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(2, 2),
                color: Colors.grey,
                blurRadius: 5.0,
              ),
            ]),
        child: Column(
          children: [
            SizedBox(
              height:15,
            ),
            Text(
              "Water Need",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,),
            Image.asset('assets/images/need.png',height:100,width:80,),
            SizedBox(
              height: 5,),
            Text(
              "0.19''",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),



          ],
        ),
      ),
    );
  }
}