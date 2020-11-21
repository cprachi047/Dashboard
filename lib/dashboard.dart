import 'package:dashboard/drawer_items/boards.dart';
import 'package:dashboard/drawer_items/client_mgnt.dart';
import 'package:flutter/material.dart';
import 'package:dashboard/drawer_items/campaigns.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dashboard/services/perf_grid.dart';
import 'package:dashboard/services/perf_graph.dart';



class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          backgroundColor: Colors.deepPurple,
          elevation: 0.0,
          title: Text(
              "DASHBOARD",
            style: TextStyle(fontSize: 15.0),
          ),
        ),
        ),
      drawer: new Drawer(
        child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(150.0),
            height: 80.0,
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/cloud.png'),
                )
            ),
          ),

          SizedBox(height:50.0),

          new ListTile(
            title: Text(
                "Dashboard",
              style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20.0,
              ),
            ),
            leading: Icon(FontAwesomeIcons.home,
            color: Colors.deepPurple),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context, new MaterialPageRoute(
                builder: (BuildContext context) => new Dashboard())
              );
            }
          ),
          new ListTile(
              hoverColor: Colors.red,
              title: Text(
                  "Campaigns",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20.0,
                ),
              ),
              leading: Icon(FontAwesomeIcons.ad,
                  color: Colors.deepPurple),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Campaigns())
                );
              }
          ),

          new ListTile(
              title: Text(
                  "Boards",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20.0,
                ),
              ),
              leading: Icon(FontAwesomeIcons.tv,
                  color: Colors.deepPurple),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Boards())
                );
              }
          ),
          new ListTile(
              title: Text(
                  "Client Mgnt",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20.0,
                ),
              ),
              leading: Icon(FontAwesomeIcons.portrait,
                  color: Colors.deepPurple),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Client_Mgnt())
                );
              }
          ),

        ],
        ),
        ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget> [
              PerformanceGrid(),
            ],
            ),
           Row(
            children: <Widget>[
              Graph(),
            ],
          ),
        ],

      ),

    );
  }
}

