import 'package:flutter/material.dart';
import 'package:project/screens/auth_screen.dart';

class IntroScreens extends StatelessWidget {
  const IntroScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Container(
              height: 500,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  image: DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage('assets/logo.png'))),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('login');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    'Get Start',
                    style: TextStyle(color: Colors.lightBlue, fontSize: 25),
                  ),
                ),
                height: 50,
                width: 1000,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
