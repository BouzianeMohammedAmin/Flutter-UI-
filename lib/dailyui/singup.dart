import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter/material.dart';
class SingUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,//err of overflow
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _header(),
            _formLoginAndFacebook(context),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      child: Stack(
        children: <Widget>[

          Container(
            padding: EdgeInsets.fromLTRB(30, 115, 0, 0),
            child: Text(
              'SingUp',
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
            padding: EdgeInsets.fromLTRB(300.0, 132, 0, 0),
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
  Widget _formLoginAndFacebook(BuildContext context){
    return  Container(
      padding: EdgeInsets.only(top: 40, left: 30, right: 30),
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
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'NICK NAME',
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
            height: 60,
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
                    'SINGUP',
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
            child: GestureDetector(
              onTap: ()=> Navigator.pop(context),
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
                child:Center(
                  child: Text(
                    'Go Back ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
                ,
              ),
            ),
          )
        ],
      ),
    );
  }
}

