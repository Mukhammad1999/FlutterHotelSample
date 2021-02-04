import 'package:flutter/material.dart';
import 'package:flutter_app/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/activity_model.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;
  DestinationScreen({this.destination});
  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {

  Text _buildRatingStars(int rating){
    String stars ='';
    for(int i=0; i<rating; i++){
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Color(0xFFfef6fb), Color(0xFFd6e5fa)]
            )
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(color: Colors.black26, offset: Offset(0.0,2.0),
                      blurRadius: 6.0,)
                    ]
                  ),
                  child: Hero(
                    tag: widget.destination.imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image:AssetImage(widget.destination.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 38.0, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30.0,
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context),
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.search),
                            iconSize: 30.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                          IconButton(
                            icon: Icon(FontAwesomeIcons.sortAmountDown),
                            iconSize: 25.0,
                            color: Colors.black,
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.destination.city,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),),
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 15.0,
                            color: Colors.white70,
                          ),
                          SizedBox(width: 5.0,),
                          Text(widget.destination.country,
                            style: GoogleFonts.roboto(
                              color: Colors.white70,
                              fontSize: 20.0,
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20.0,
                  bottom: 20.0,
                  child: Icon(Icons.location_on,
                  color: Colors.white,
                  size: 20.0,),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0),
                itemCount: widget.destination.activities.length,
                  itemBuilder: (BuildContext context, int index){
                  Activity activity = widget.destination.activities[index];

                  return Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        height: 170,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding:EdgeInsets.fromLTRB(100.0, 20.0,20.0,20.0),
                          child: Column(
                            mainAxisAlignment:MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    width:180,
                                    child: Text(activity.name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),),
                                  ),
                                  Text('${activity.price}\$',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.green,
                                  ),),
                                ],
                              ),
                              Text(activity.type,
                              style: GoogleFonts.montserrat(
                                color: Colors.grey,
                              ),),
                              _buildRatingStars(activity.rating),
                              SizedBox(height: 10.0,),
                              Row(

                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blueAccent[100],
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                    activity.startTime[0],
                                  ),
                                  ),
                                  SizedBox(width: 10,),

                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blueAccent[100],
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      activity.startTime[1],
                                    ),
                                  ),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left:20.0,
                        top:15.0,
                        bottom:15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(width: 110,
                          image: AssetImage(activity.imageUrl),
                          fit: BoxFit.cover,),
                        ),
                      )
                    ],
                  );
                  },),
            )
          ],
        ),
      ),

    );
  }
}