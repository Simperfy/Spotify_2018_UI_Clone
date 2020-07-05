import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
          resizeToAvoidBottomInset: false, // avoid overflow when keyboard is visible
      body: Builder(
        builder: (context) => Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: <Widget>[
                // Title
                Container(
                  padding: const EdgeInsets.only(right: 50, top: 150),
                  child: RichText(
                    text: TextSpan(
                      text: 'Hello There',
                      style: TextStyle(
                          fontSize: 85,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          height: 0.7),
                      children: <TextSpan>[
                        TextSpan(
                            text: '.',
                            style:
                                TextStyle(fontSize: 100, color: Colors.green))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                // Email and Password
                Theme(
                  data: ThemeData(primaryColor: Colors.green),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                      ),
                      SizedBox(height: 15),
                      Text('Forgot Password',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            decoration: TextDecoration.underline,
                          ))
                    ],
                  ),
                ),
                // Social Media Buttons
                SizedBox(height: 40),
                Column(
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'LOGIN',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(height: 15),
                    ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.black, width: 2.5),
                      ),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Log in with Facebook',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w900),
                        ),
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 70),
                // Footer
                RichText(
                  text: TextSpan(
                    text: 'New to Spotify? ',
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Register',
                          style: TextStyle(color: Colors.green, decoration: TextDecoration.underline, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
