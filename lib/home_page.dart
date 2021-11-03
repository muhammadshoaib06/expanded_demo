import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 350,
              child: Stack(
                children: [
                  Positioned(top: 0,
                      left: 0,
                      right: 0,
                      child: Container(height: 300, color: Colors.teal,)),
                  Positioned(top: 50,
                      left: 20,
                      right: 20,
                      child: Container(height: 60, color: Colors.green,)),
                  Positioned(top: 130,
                      left: 20,
                      right: 20,
                      child: Container(height: 150, color: Colors.orange,)),
                ],
              ),
            ),
            Container(height: 80, color: Colors.red,),
            ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
              itemCount: 20,
              itemBuilder: (_, index) => Container(

                margin: const EdgeInsets.only(
                    bottom: 25.0 ,
                    left: 18.0 ,
                    right: 18.0 ),
                padding: const EdgeInsets.symmetric(
                    vertical: 13.0 ,
                    horizontal: 18.0 ),
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(8.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors
                          .teal
                          .withOpacity(0.16),
                      offset: const Offset(0, 6.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      'hello $index',
                      style: const TextStyle(
                          fontSize: 28.0,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    ListView.builder(shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: index + 1,
                    itemBuilder: (_, secondIndex) => Text(
                      '$index',
                      style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold
                      ),
                    ))

                  ],
                ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}