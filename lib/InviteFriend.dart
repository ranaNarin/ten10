import 'package:flutter/material.dart';
import 'package:ten10/utilities/constants.dart';

import 'DiscoverDeals.dart';
import 'Home.dart';

class InviteFriend extends StatefulWidget {
  @override
  _InviteFriend createState() => _InviteFriend();
}

class _InviteFriend extends State<InviteFriend> with SingleTickerProviderStateMixin {
  final String title = 'Invite Your Friends';
  Animation cardAnimation, delayedCardAnimation, fabButtonanim, infoAnimation;
  AnimationController controller;

  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    infoAnimation = Tween(begin: 0.0, end: 0.025).animate(CurvedAnimation(
        curve: Interval(0.7, 1.0, curve: Curves.fastOutSlowIn),
        parent: controller));
  }

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
            body: Padding(padding: const EdgeInsets.all(10.0), child: _body()),
            endDrawer: _drawer()));
  }

  Widget _body() {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new SizedBox(height: 20,),
            new SizedBox(
              width: double.infinity,
              child : new Text(
                "Refer your Friends!",
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            new SizedBox(height: 20,),
            new SizedBox(
              width: double.infinity,
              child : new Text(
                "Loremrem ipsum solor sit amet \n "
                "consectetur adipisicing elit, sed do \n  "
                "eiusmod tempor incididunt ut labore",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                ),
              )
            ),
            new SizedBox(height: 40,),

            new SizedBox(height: 20,),
            new SizedBox(
              width: double.infinity,
              child : new RaisedButton(
                elevation: 5.0,
                onPressed: () => (Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                )),
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.blue,
                child: Text(
                  "Email",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),

            ),
            new SizedBox(height: 20,),
            new SizedBox(
              width: double.infinity,
              child : new RaisedButton(
                elevation: 5.0,
                onPressed: () => (Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                )),
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.green,
                child: Text(
                  "SMS",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),

            )
          ],
        ),
      ),
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
}
