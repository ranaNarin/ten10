import 'package:flutter/material.dart';
import 'package:ten10/utilities/constants.dart';

import 'DiscoverDeals.dart';
import 'Home.dart';

class Support extends StatefulWidget {
  @override
  _Support createState() => _Support();
}

class _Support extends State<Support> with SingleTickerProviderStateMixin {
  final String title = 'Support';
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
                "Get in Touch wiht us",
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
            new SizedBox(
                width: double.infinity,
                child : TextField(
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: new BorderSide(color: Colors.grey)),
                      hintText: 'Enter name'
                  ),
                ),

            ),
            new SizedBox(height: 10,),
            new SizedBox(
              width: double.infinity,
              child : TextField(
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: new BorderSide(color: Colors.grey)),
                    hintText: 'Enter email'
                ),
              ),

            ),
            new SizedBox(height: 10,),
            new SizedBox(
              width: double.infinity,
              child : TextField(
                  keyboardType: TextInputType.multiline,
                  minLines: 4,
                  maxLines: null,
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                        borderSide: new BorderSide(color: Colors.grey)),
                    hintText: 'Enter message'
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
                color: Colors.blue,
                child: Text(
                  'Send Now',
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
