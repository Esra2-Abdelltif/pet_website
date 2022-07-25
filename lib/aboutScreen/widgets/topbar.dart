import 'package:flutter/material.dart';
import 'package:orange_app/aboutScreen/Page/home.dart';

class TopBarContents extends StatefulWidget {

  TopBarContents();

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.brown,
      child: Padding(
        padding: EdgeInsets.all(30),
        child:
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //SizedBox(width: screenSize.width/4,),
              Image(image: AssetImage('assets/images/logo.jpg')),
              Spacer(),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[0] = true
                        : _isHovering[0] = false;
                  });

                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'About Us',
                      style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 30,
                        color:Colors.white ,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 25),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[1] = true
                        : _isHovering[1] = false;
                  });

                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Adaption',
                      style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[1],
                      child: Container(
                        height: 2,
                        width: 30,
                        color:Colors.white ,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 25),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[2] = true
                        : _isHovering[2] = false;
                  });

                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[2],
                      child: Container(
                        height: 2,
                        width: 30,
                        color:Colors.white ,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 25),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[3] = true
                        : _isHovering[3] = false;
                  });

                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Request',
                      style: TextStyle(
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[3],
                      child: Container(
                        height: 2,
                        width: 30,
                        color:Colors.white ,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[4] = true
                        : _isHovering[4] = false;
                  });

                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                    color: _isHovering[4] ? Colors.grey.shade100 :Colors.brown,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 1,
                      color:Colors.grey.shade100,
                    ),
                  ),

                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:Center(child: Text('SingUp', style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)),
                ),
              ),
              SizedBox(width: screenSize.width / 25),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value
                        ? _isHovering[5] = true
                        : _isHovering[5] = false;
                  });

                },
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                    color: _isHovering[5] ? Colors.grey.shade100 :Colors.brown,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 1,
                      color:Colors.grey.shade100,
                    ),
                  ),

                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child:Center(child: Text('Login', style: TextStyle(
                      color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),)),
                ),
              ),



            ],
          ),
        ),

      ),

    );
    //);
  }

}
