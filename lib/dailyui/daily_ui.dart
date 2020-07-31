import 'package:flutter/material.dart';

class DailyUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,//err of overflow
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _header(),
          _formLoginAndFacebook(),
          SizedBox(height: 20.0,),
          _footer(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(30.0, 115, 0, 0),
            child: Text(
              'Hello',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 190, 0, 0),
            child: Text(
              'There',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
          ),
          /*
                // first Method use
                Container(
                  padding: EdgeInsets.fromLTRB(250.0, 250, 0, 0),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    maxRadius: 10,
                  ),
                ),*/
          Container(
            padding: EdgeInsets.fromLTRB(263.0, 190, 0, 0),
            child: Text(
              '.',
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
  Widget _formLoginAndFacebook(){
    return  Container(
      padding: EdgeInsets.only(top: 120, left: 30, right: 30),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'EMAIL',
              labelStyle: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  )),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'PASSWORD',
              labelStyle: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.bold,
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  )),
            ),
          ),
          Container(
            alignment: Alignment(1.0, 0.0),
            padding: EdgeInsets.only(top: 15.0, left: 20.0),
            child: InkWell(
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 40.0,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.greenAccent,
              color: Colors.green,
              elevation: 7.0,
              child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40.0,
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                  style: BorderStyle.solid,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: ImageIcon(
                        AssetImage('assets/images/facebook.png')),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Center(
                    child: Text(
                      'Log With Facebook',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _footer() {
  return Row(
 mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
      Text('New To Spotify'),
    SizedBox(width: 5.0,),
    InkWell(
      onTap: (){},
      child: Text(
        'Register',
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
      ),
    )
  ],
  );
  }
}

