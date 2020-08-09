import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ten10/DiscoverDeals_Map.dart';
import 'package:ten10/utilities/MyFlexiableAppBar.dart';

import 'Home.dart';
import 'Support.dart';

class DiscoverDeals extends StatefulWidget {
  @override
  _DiscoverDeals createState() => _DiscoverDeals();
}

class _DiscoverDeals extends State<DiscoverDeals> {
  final String title = 'Discover Deals';
  bool visibilitySearch = false;
  final double appBarHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(
              leading: Builder(builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    visibilitySearch ? null : _changed(true, "search");
                  },
                );
              }),
              title: Text(title),
              automaticallyImplyLeading: false,
            ),
            body: _body(),
            floatingActionButton: _customFloatingButton(),
//            floatingActionButton: FloatingActionButton(
//              onPressed: null,
//              child: Icon(Icons.add),
//              tooltip: "Add one more Item",
//            ),
            endDrawer: _drawer()));
  }

  Widget _body() {
    return new Scaffold(
      body: _buildMainContent(),
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
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
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

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "search") {
        visibilitySearch = visibility;
      }
    });
  }

  Widget searchBar() {
    return new Container(
      color: Colors.blue,
      child: new Column(
        children: <Widget>[
          visibilitySearch
              ? new Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Expanded(
                      flex: 9,
                      child: new Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: new TextField(
                            style: TextStyle(
                                fontSize: 14.0,
                                height: 2.0,
                                color: Colors.black),
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.text,
                            maxLines: 1,
                            decoration: InputDecoration(
                              hintText: 'Search for Cafes, Seafood...',
                              hintStyle: TextStyle(fontSize: 14),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              contentPadding: EdgeInsets.all(14),
                              fillColor: Colors.white,
                            ),
                          )),
                    ),
                    new Expanded(
                      flex: 1,
                      child: new IconButton(
                        color: Colors.white,
                        icon: const Icon(
                          Icons.search,
                          size: 28.0,
                        ),
                        onPressed: () {
                          _changed(false, "search");
                        },
                      ),
                    ),
                  ],
                )
              : new Container()
        ],
      ),
    );
  }

  _buildMainContent() {
    return CustomScrollView(
      slivers: <Widget>[
//        SliverAppBar(
//          pinned: false,
//          expandedHeight: 256.0,
//          flexibleSpace: FlexibleSpaceBar(
//            background: _MyFlexiableAppBar(),
//          ),

//          flexibleSpace: FlexibleSpaceBar(
//            background: Column(
//              children: <Widget>[
//                Container(
//                  margin: EdgeInsets.only(top: 16.0),
//                  padding: EdgeInsets.only(left: 32.0, right: 32.0),
//                  child: searchBar(),
//                )
//              ],
//            ),
//
//          ),searchBar
        //       ),
        SliverList(
          delegate: SliverChildListDelegate([
            searchBar(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
            _buildListItem(),
          ]),
        )
      ],
    );
  }

  Widget _buildListItem() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'List header',
              style: Theme.of(context).textTheme.body2,
            ),
          ),
        ),
        ListView.builder(
          padding: EdgeInsets.only(top: 8.0),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Text(
                'Nested list item $index',
                style: Theme.of(context).textTheme.body1,
              ),
            );
          },
          itemCount: 4,
          shrinkWrap: true,
          // todo comment this out and check the result
          physics:
              ClampingScrollPhysics(), // todo comment this out and check the result
        ),
      ],
    );
  }

  _MyFlexiableAppBar() {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return new Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      child: new Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: new Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: new TextField(
                        style: TextStyle(
                            fontSize: 14.0, height: 2.0, color: Colors.black),
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.text,
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Search for Cafes, Seafood...',
                          hintStyle: TextStyle(fontSize: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.all(14),
                          fillColor: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      )),
      decoration: new BoxDecoration(
        color: Color(0xff013db7),
      ),
    );
  }

  Widget _customFloatingButton() {
    return RawMaterialButton(
      fillColor: Colors.blue,
      splashColor: Colors.blue,
      shape: StadiumBorder(),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DiscoverDeals_Map()));
        },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 20,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.map, color: Colors.white,),
            SizedBox(width: 8,),
            Text(
              "Map",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
