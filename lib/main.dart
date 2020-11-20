import 'package:flutter/material.dart';

void main() {
  runApp(
    //Our app widget tree starts herwe
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ), //IcoButton
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.comment),
              tooltip: 'Comment',
              onPressed: () {},
            ), //IconButton
          ], //<Widget>[]
        ), //AppBar
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 200,
              width: 250,
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://media.geeksforgeeks.org/wp-content/cdn-uploads/logo.png'), //NetworkImage
                    scale: 3.0,
                  ), //DecprationImage
                  border: Border.all(
                      color: Colors.green,
                      width: 4.0,
                      style: BorderStyle.solid), //Border.all

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ), //BorderRadius.only
                  /************************************/
                  /* The BoxShadow widget  is here */
                  /************************************/
                  boxShadow: [
                    BoxShadow(
                      color: Colors.greenAccent[200],
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 5.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                  ],
                ), //BoxDecoration
              ), //Container
            ), //SizedBox
          ), //Padding
        ), //Center
      ), //Scaffold
      debugShowCheckedModeBanner: false, //Deug banner is turned off
    ), //MaterialApp
  );
}
