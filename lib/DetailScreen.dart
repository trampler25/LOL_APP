import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  var logoImage = "https://i.dlpng.com/static/png/5321823-league-of-legends-logo-by-friendlyman-splashes-en-2019-lol-league-of-legends-logo-1000_667_preview.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.lightBlueAccent.shade200,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Riot Game', style: TextStyle(color: Colors.white, letterSpacing: 1.1, fontSize: 30.0),
                ),
                SizedBox(height: 32.0,),
                Container(
                  width: 200.0,
                  child: Text(
                    'League of Legend',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0),),
                ),
                SizedBox(height: 32.0),
                itemRow(Icons.developer_board, 'Pengembang', 'Riot Games'),
                SizedBox(height: 8.0),
                itemRow(Icons.publish, 'Pengembang', 'Riot Games'),
                SizedBox(height: 8.0),
                itemRow(Icons.access_time, 'Tanggal Rilis', '27 Oktober 2009'),
                SizedBox(height: 8.0),
                itemRow(Icons.devices, 'Platform', 'Windows, macOS')
              ],
            ),
          )
        ],
      ),
    );
  }

  itemRow(icon, name, title){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
                icon,
                color:Colors.white
            ),
            SizedBox(width: 6.0),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20.0),),
          ],
        ),
        Text(
          title,
          style: TextStyle(color : Colors.white54, fontSize: 20.0),
        )
      ],
    );
  }

}
