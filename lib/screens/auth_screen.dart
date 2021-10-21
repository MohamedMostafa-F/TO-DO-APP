import 'package:flutter/material.dart';
import 'package:project/widgets/auth_form.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              color: Colors.lightBlue),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                'Hellow!',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: 1.2),
              ),
              Image.asset(
                'assets/logo.png',
                height: 250,
              ),
              AuthForm(),
            ],
          ),
        )
      ],
    ));
  }
}
