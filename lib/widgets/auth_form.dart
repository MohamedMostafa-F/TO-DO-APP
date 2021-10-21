import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  String _buttonText = 'Login';
  String _swtichText = 'Don\'t have an account?Register';
  String _email = '', _password = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        onChanged: (value) => _email = value,
                        validator: (value) =>
                            value!.isEmpty ? 'Enter a vaild email' : null,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          labelText: 'Enter your Email',
                          labelStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        onChanged: (value) => _password = value,
                        validator: (value) =>
                            value!.length < 7 ? 'Enter vaild Password' : null,
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          labelText: 'Enter your Password',
                          labelStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (_formKey.currentState!.validate()) {
                            print(_email);
                            print(_password);
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            _buttonText,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                        height: 50,
                        width: 1000,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.lightBlue),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (_buttonText == 'Login') {
                          _buttonText = 'Register';
                          _swtichText = 'Already have an account?login';
                        } else {
                          _buttonText = 'Login in ';
                          _swtichText = 'Don\'t have an account?login in ';
                        }
                      });
                    },
                    child: Text(
                      _swtichText,
                      style: TextStyle(color: Colors.black54, fontSize: 20),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
