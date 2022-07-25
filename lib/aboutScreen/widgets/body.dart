import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange_app/constant/constast.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Elsa',style: myFontStyleLarge),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Shared By:',style: myFontStyleSmall),
              Text('Rawan Tarek ',style: myFontStyleLarge),
              Spacer(),
              Row(children: [
                Icon(Icons.whatsapp),
                Icon(Icons.phone),

              ],)

            ],)
          ],)

          ],)

        ],
      ),
    );
  }
}
