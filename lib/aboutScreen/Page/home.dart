import 'package:flutter/material.dart';
import 'package:orange_app/aboutScreen/widgets/body.dart';
import 'package:orange_app/aboutScreen/widgets/slider.dart';
import 'package:orange_app/aboutScreen/widgets/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(

        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            TopBarContents(),
           Column(children: [
             SliderContainer(),
           // Body(),

           ],),



          ],
        ),
      ),
    );
  }
}
