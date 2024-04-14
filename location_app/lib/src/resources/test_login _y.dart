import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.green,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Positioned(
                  height: MediaQuery.of(context).size.height * 0.35,
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Image.asset('./assets/images/logo1.png'),
                      const Text(
                        'GPS Tracker',
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height *
                      0.35, // Starting from 30% of the screen height
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    color: const Color(0xffDA9F5C),
                    child: Column(
                      children: [
                        Text(
                          'Welcome to GPS Tracker!!',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          'Enter your email and password here',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Container(
                                width: 50,
                                child: Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                              labelStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 10),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        TextField(
                          obscureText: true, // Ẩn mật khẩu
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Container(
                              width: 50,
                              child: Icon(
                                Icons.email,
                                size: 20,
                                color: Colors.black,
                              ),
                            ),
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff390808),
                                height: 1.5,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xff390808),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: SizedBox(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: const Color(0xff000D2D),
                                foregroundColor: const Color(0xffFFE8E8),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 5),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
