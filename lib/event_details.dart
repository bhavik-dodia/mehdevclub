import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventDetails extends StatelessWidget {
  EventDetails(
      {@required this.eventName,
      this.eventOrganizer,
      this.eventDate,
      this.eventVenue,
      this.eventStatus,
      this.eventDescription});

  final eventName;
  final eventOrganizer;
  final eventDate;
  final eventDescription;
  final eventVenue;
  final eventStatus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.lightbulb_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              // Image(
              //   image: AssetImage('assets/Mehsana-Developers-Club-4.png'),
              //   color: Colors.black87,
              //   fit: BoxFit.cover,
              //   colorBlendMode: BlendMode.darken,
              // ),
              SizedBox(height: 15),
              Text(
                'Welcome to $eventName',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                eventDescription,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        box(Icon(Icons.access_time, color: Colors.redAccent),
                            'Agenda'),
                        box(Icon(Icons.person, color: Colors.greenAccent),
                            'Speakers'),
                        box(
                            Icon(Icons.attach_money,
                                color: Colors.purpleAccent),
                            'Sponsors'),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        box(Icon(Icons.feedback, color: Colors.amberAccent),
                            'FAQ'),
                        box(Icon(Icons.map, color: Colors.blueAccent),
                            'Locate Us'),
                        box(Icon(Icons.edit, color: Colors.pinkAccent),
                            'Register'),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.chrome),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.facebookF),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.instagram),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.twitter),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.youtube),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.email),
                    onPressed: () {},
                  )
                ],
              ),
              SizedBox(height: 15),
              Text(
                '#MehDevClub',
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget box(Icon icon, String title) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        height: 80,
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon,
            SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
