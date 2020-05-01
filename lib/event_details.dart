import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
        elevation: 8,
        title: Text('Home',
            style: GoogleFonts.alegreya(
              fontSize: 25,
            )),
        actions: <Widget>[
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
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/Mehsana-Developers-Club-4.png'),
              ),
              SizedBox(height: 15),
              Text(
                'Welcome to $eventName',
                style: GoogleFonts.alegreya(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                eventDescription,
                softWrap: true,
                textAlign: TextAlign.justify,
                style: GoogleFonts.alegreya(
                  fontSize: 20,
                ),
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
                style: GoogleFonts.alegreya(
                    fontSize: 18, color: Colors.blueAccent),
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
            Text(title, style: GoogleFonts.alegreya(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
