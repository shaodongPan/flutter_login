import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            ConstrainedBox(
              child: Image.asset(
                "images/illustration.png",
                fit: BoxFit.cover,
              ),
              constraints: new BoxConstraints.expand(),
            ),
            Positioned(
              child: Image.asset(
                "images/logo.png",
                width: 150,
                height: 100,
              ),
              left: 40,
              top: 30,
            ),
            Positioned(
              child: ListView(
                children: <Widget>[
                  Title(),
                  AddressInput(),
                  PassWord(),
                  Check(),
                  OkButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Text(
        "Signup",
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
      margin: EdgeInsets.only(top: 130, left: 40),
    ));
  }
}

//邮箱地址
class AddressInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide.none),
            fillColor: Colors.white,
            filled: true,
            hintText: "Your email address",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0),
            contentPadding: EdgeInsets.all(25.0),
            enabledBorder: null,
            disabledBorder: null),
        controller: null,
      ),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width - 80,
      height: 80,
      margin: EdgeInsets.only(left: 40, top: 30, right: 40),
    );
  }
}

class Check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Checkbox(
            value: true,
            onChanged: (boolean) {},
            activeColor: Colors.white,
          ),
          Text(
            "Suprise me with gift",
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
      margin: EdgeInsets.only(left: 40),
    );
  }
}

class PassWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide.none),
            fillColor: Colors.white,
            filled: true,
            hintText: "Your password",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0),
            contentPadding: EdgeInsets.all(25.0),
            enabledBorder: null,
            disabledBorder: null),
        controller: null,
      ),
      width: MediaQuery.of(context).size.width - 80,
      margin: EdgeInsets.only(left: 40, top: 10, right: 40),
      height: 80,
    );
  }
}

class OkButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          _showToast(context);
        },
        child: Text(
          "Let's Begin",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(35))),
        color: Colors.pinkAccent,
      ),
      width: MediaQuery.of(context).size.width - 80,
      margin: EdgeInsets.only(left: 40, right: 40, top: 0),
      height: 70,
    );
  }
}

void _showToast(BuildContext context) {
  final scaffold = Scaffold.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: const Text('这只是个练习啦~~~'),
      duration: Duration(milliseconds: 1000),
      action:
          SnackBarAction(label: '', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
