import 'package:flutter/material.dart';

import 'auth_form.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                      color: Color(0xff9d242b),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Image.asset(
                        'assets/images/logo.png',
                        height: 280,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            AuthForm(),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                height: size.height * 0.2,
                decoration: BoxDecoration(
                    color: Color(0xff9d242b),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
