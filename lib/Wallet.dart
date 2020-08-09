import 'package:flutter/material.dart';
import 'package:ten10/Support.dart';

import 'DiscoverDeals.dart';
import 'InviteFriend.dart';

class Wallet extends StatefulWidget {
  @override
  _Wallet createState() => _Wallet();
}

class _Wallet extends State<Wallet> {
  final String title = 'Wallet';

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(title),
              automaticallyImplyLeading: false,
            ),
            body: _body(),
            endDrawer: _drawer()));
  }

  Widget _body() {
    return Column(
      children: <Widget>[
        _totalBalance(),
        _withdrawCash(),
        _cashBackYTD("Cashback YTD"),
        _cashBackYTD("Bonus Cash YTD"),
      ],
    );
  }

  Widget _drawer() {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor:
            Colors.blue[800], //This will change the drawer background to blue.
        //other styles
      ),
      child: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.all(30),
          children: <Widget>[
            ListTile(
              title: Text(
                'Home',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                setState(() {});
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Discover Deals',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DiscoverDeals()));
              },
            ),
            ListTile(
              title: Text(
                'Cashback',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Services',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Invite you Friends',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InviteFriend()));
              },
            ),
            ListTile(
              title: Text(
                'Wallet',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Support',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Support()));
              },
            ),
            ListTile(
              title: Text(
                'Your Account',
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _totalBalance() {
    return Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      color: Colors.blue[800],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Total Balance",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white60,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              "\u0024 1,283.15",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  Widget _withdrawCash() {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),

      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => (print("click to withdraw Cash")),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.blue,
        child: Text(
          'Withdraw Cash',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _cashBackYTD(String title) {
    return Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
             children: <Widget>[
               Icon(
                 Icons.add,
                 color: Colors.blue,
                 size: 20.0,
               ),
               new Expanded(
                   child: Text(
                     title,
                     textAlign: TextAlign.start,
                     style: TextStyle(
                       fontSize: 14.0,
                       color: Colors.grey[600],
                       fontWeight: FontWeight.bold
                     ),
                   ),
                 flex: 1,
               ),
               new Expanded(
                   child: Text(
                     "\u0024 679",
                     textAlign: TextAlign.end,
                     style: TextStyle(
                         fontSize: 16.0,
                         color: Colors.black,
                         fontWeight: FontWeight.bold),
                   ),
                 flex: 1,
               )

             ],
            )

          ],
        ),
      ),
    );
  }
}
