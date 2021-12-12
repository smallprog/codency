import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: size.height * 0.5,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              color: const Color(0xff9d242b),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              image: DecorationImage(
                image: ExactAssetImage('assets/images/logo.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Expanded(
            child: Align(
              alignment: FractionalOffset.center,
              child: Form(
                  child: Column(
                children: <Widget>[
                  TextFormField(),
                  SizedBox(height: 20),
                  TextFormField(),
                  SizedBox(height: 20),
                  MaterialButton(onPressed: () => {}, child: Text('Login')),
                ],
              )),
            ),
          ),
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  color: const Color(0xff9d242b),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                )),
          ))
        ],
      ),
    );
  }
}
