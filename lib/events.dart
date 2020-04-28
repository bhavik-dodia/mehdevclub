import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mehdevclub/event_details.dart';
import 'package:google_fonts/google_fonts.dart';

class Events extends StatelessWidget {
  Events(
      {@required this.eventName,
      this.eventOrganizer,
      this.eventDate,
      this.eventVenue,
      this.eventStatus,
      this.eventDescription});

  final eventName;
  final eventOrganizer;
  final eventDate;
  final eventVenue;
  final eventStatus;
  final eventDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(eventStatus,
              style: GoogleFonts.alegreya(textStyle: TextStyle(
                  color:
                      eventStatus == 'Active' ? Colors.green : Colors.redAccent,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventDetails(
                      eventName: eventName,
                      eventDescription: eventDescription,
                      eventDate: eventDate,
                      eventOrganizer: eventOrganizer,
                      eventVenue: eventVenue,
                      eventStatus: eventStatus,
                    ),
                  ));
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 100,
                width: 249,
                // padding: EdgeInsets.all(8),
                child: Stack(
                  overflow: Overflow.clip,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/Mehsana-Developers-Club-4.png'),
                      height: 130,
                      width: 250,
                      color: Colors.black54,
                      fit: BoxFit.fill,
                      colorBlendMode: BlendMode.darken,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(eventName,
                                style: GoogleFonts.alegreya(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  eventOrganizer,
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.alegreya(textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),)
                                ),
                                Text(
                                  eventVenue,
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.alegreya(textStyle: TextStyle(fontSize: 15, color: Colors.white,),)
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(eventDate, style: GoogleFonts.alegreya(textStyle: TextStyle(fontSize: 18, color: Colors.white,),),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
