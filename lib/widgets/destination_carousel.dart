import 'package:flutter/material.dart';
import 'package:flutter_app/destination_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_app/models/destination_model.dart';
import 'package:flutter_app/models/activity_model.dart';



class Destination_carousel extends StatelessWidget {
  const Destination_carousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal:20.0, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Top destinations',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  letterSpacing: 1.0,
                ),),
              GestureDetector(
                onTap: ()=>print('see all'
                ),
                child: Text('See all',
                  style: GoogleFonts.lato(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15,

                  ),),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinnations.length,
            itemBuilder: (BuildContext context, int index){
              Destination destination = destinnations[index];
              return GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder: (_) => DestinationScreen(destination: destination,)
                )),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 210,

                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom:15.0,
                        child: Container(
                          height: 125,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding:EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    '${destination.activities.length} activities',
                                  style: GoogleFonts.roboto(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2,
                                  ),

                                ),
                                Text(
                                    destination.description,
                                  style: GoogleFonts.roboto(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(color: Colors.black26,offset: Offset(0.0,0.2), blurRadius: 6.0)
                          ],

                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag:destination.imageUrl,
                              child: ClipRRect(
                                borderRadius:BorderRadius.circular(20.0),
                                child: Image(height: 180.0, width: 180.0,
                                image: AssetImage(destination.imageUrl),
                                fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                Text(destination.city,
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.locationArrow,
                                      size: 10.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 5.0,),
                                    Text(destination.country,
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                       ),),
                                  ],
                                ),
                              ],
                                ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                ),
              );
            },
          ),
        )
      ],
    );
  }
}