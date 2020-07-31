import 'package:flutter/material.dart';

class RelationshipCoachingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new FlutterLogo(
            colors: Colors.green,
            size: MediaQuery.of(context).size.width * 0.08,
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).accentColor,
                size: MediaQuery.of(context).size.width * 0.08,
              ),
              onPressed: () {}),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Theme.of(context).accentColor,
                  size: MediaQuery.of(context).size.width * 0.08,
                ),
                onPressed: () {}),
          ],
        ),
        body: ListView(
          children: <Widget>[
            _titleText(),
            _cardBuy(context),
            SizedBox(height: 10.0),
            GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 4.0,
              shrinkWrap: true,
              children: <Widget>[
                _buildCard('Bouziane Med Amin', 'Available', 1),
                _buildCard('Bouziane Med Amin', 'Away', 2),
                _buildCard('Bouziane Med Amin', 'Away', 3),
                _buildCard('Bouziane Med Amin', 'Available',4 ),
                _buildCard('Bouziane Med Amin', 'Away', 5),
                _buildCard('Bouziane Med Amin', 'Away', 6),
                _buildCard('Bouziane Med Amin', 'Available', 7),
                _buildCard('Bouziane Med Amin', 'Away', 8),
                _buildCard('Bouziane Med Amin', 'Away', 9),

              ],
            )
          ],
        ));
  }

  Widget _titleText() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
      ),
      child: Text(
        'Get coaching',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
  Widget _cardBuy(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
        left: 24,
        right: 24,
      ),
      child: Container(
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)],
            borderRadius: BorderRadius.circular(16),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'YOU HAVE',
                  style: TextStyle(color: Colors.black26,),

                ),
                Text(
                  '206',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ],
            ),
            SizedBox(width:MediaQuery.of(context).size.width*0.2,),
            GestureDetector(
              child: _buyButton(),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
  Widget _buyButton() {
    return   Container(
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey)],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Text('Buy more',style: TextStyle(
          color: Colors.green,
        ),),
      ),
    );

  }
  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 12.0),
            _avaterPicStatus(status),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 15.0),
            Expanded(
                child: Container(
                    width: 175.0,
                    decoration: BoxDecoration(
                      color: status == 'Away' ? Colors.grey: Colors.green,
                      borderRadius: BorderRadius.only
                        (
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)
                      ),
                    ),
                    child: Center(
                      child: Text('Request',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                )
            )
          ],
        ),
        margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
    );
  }
  Widget _avaterPicStatus(String status){
    return  Stack(
        children: <Widget>[
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.green,
                image: DecorationImage(
                  image: ExactAssetImage('assets/images/me.jpg'),
                )
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 40.0),
            height: 20.0,
            width: 20.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: status == 'Away' ? Colors.amber : Colors.green,
                border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0
                )
            ),
          )
        ]);
  }
}
