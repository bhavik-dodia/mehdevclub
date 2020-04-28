import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mehdevclub/events.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events', style: GoogleFonts.alegreya(textStyle: TextStyle(fontSize: 25,))),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
          onPressed: (){},
          ),
          IconButton(icon: Icon(Icons.lightbulb_outline),
            onPressed: (){},
          ),
          IconButton(icon: Icon(Icons.share),
            onPressed: (){},
          ),
        ],
      ),
      body: Center(
        child: Container(
        //  padding: const EdgeInsets.all(10.0),
          child: StreamBuilder<QuerySnapshot>(
            stream: Firestore.instance
                .collection('Events')
//                .where("Enrollment No", isEqualTo: enroll)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError)
                return Text('Error: ${snapshot.error}');
              if (snapshot.hasData && snapshot.data.documents == null)
                return Text(
                    'No events are available now!!!\n\nPlease try again later.',
                    style: TextStyle(fontSize: 15));
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Text(
                    'Retrieving Events...',
                    style: TextStyle(fontSize: 20),
                  );
                default:
                  return ListView(
                    children: snapshot.data.documents
                        .map((DocumentSnapshot document) {
                      return Events(
                        eventName: document['Name'],
                        eventOrganizer: document['Organizer'],
                        eventDate: document['Date'],
                        eventVenue: document['Venue'],
                        eventStatus: document['Status'],
                        eventDescription: document['Description'],
                      );
                    }).toList(),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}
