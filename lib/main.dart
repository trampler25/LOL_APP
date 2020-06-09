import 'package:flutter/material.dart';
import 'DetailScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome',
      home : MyHomePage(),
    );
  }
}

var logoImage = "https://i.dlpng.com/static/png/5321823-league-of-legends-logo-by-friendlyman-splashes-en-2019-lol-league-of-legends-logo-1000_667_preview.png";

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context){
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text('League of Legend'),
          ),
          backgroundColor: Colors.blue,
          body: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/bg.jpg"),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150.0)),
                    color: Colors.transparent,

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Container(
                          width: 300.0,
                          child: Text(
                            'League of Legend',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 32.0,color: Colors.white),),
                        ),
                        SizedBox(height: 12.0,),
                        Text(
                          "Legend Never Die",
                          style: TextStyle(color: Colors.white),
                        ),
                        Spacer(),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(250.0, 250.0, 10.0, 0.0),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(
                                        context,MaterialPageRoute(
                                        builder: (
                                            BuildContext context)=> DetailScreen()));
                                  },
                                  child: new Image.asset("images/logo_lol.png", width: 150.0),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(height: 5.0),
                      SizedBox(width: double.infinity,child: Container(child: Text('Overview', style: TextStyle(color: Colors.white),textAlign: TextAlign.center,))),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 90.0,
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32.0),
                                  topRight: Radius.circular(32.0),
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '250',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 42.0),),
                                SizedBox(width: 8.0,),
                                Text(
                                  'country',
                                  style: TextStyle(color: Colors.white54),)
                              ],
                            ),
                          ),
                          Container(
                            height: 90.0,
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(32.0),
                                  topRight: Radius.circular(32.0),
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '250m',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 42.0
                                  ),
                                ),
                                SizedBox(width: 8.0,),
                                Text(
                                  'players',
                                  style: TextStyle(color: Colors.white54),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

