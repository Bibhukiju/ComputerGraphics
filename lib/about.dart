import 'package:flutter/material.dart';


class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.teal.shade800,
          title: Text("About us"),

        ),
          body: SafeArea(
            child: Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/s960x960/84670290_2441970369449640_6470582576061874176_o.jpg?_nc_cat=111&_nc_ohc=6WE9cuoLVNYAX880PGb&_nc_ht=scontent.fktm10-1.fna&_nc_tp=7&oh=63da17128f151be7f6e4510a36fd25b6&oe=5EC3227A")
                      ,radius: 90,
                    ),
                    Text("Bibhu kiju",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 240,
                      child: Divider(
                        color: Colors.teal.shade100,
                      ),
                    ),
                    Text("CSIT STUDENT",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                      ),),
                    SizedBox(
                      height: 30,
                      width: 240,
                      child: Divider(
                        color: Colors.teal.shade100,
                      ),
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            color: Colors.teal,
                            size: 45,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text("9863849224",
                            style: TextStyle(
                              color: Colors.yellow.shade800,
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),

                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.teal,
                        ),
                        title: Text("bibhukiju@gamil.com",
                          style: TextStyle(
                              color: Colors.yellow[800],
                              fontSize: 22
                          ),),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                    ),
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Colors.grey,
      );
  }
}
