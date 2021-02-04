import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/destination_carousel.dart';
import 'package:flutter_app/widgets/hotelcarousel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex=0;
  int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex==index ? Theme.of(context).accentColor : Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30.0),

        ),
        child: Icon(_icons[index], size:25.0,
          color:_selectedIndex == index ?  Theme.of(context).primaryColor : Colors.lightBlueAccent[100]),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Color(0xFFfef6fb), Color(0xFFd6e5fa)]
            )
          ),

          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 30),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 120),
                child: Text('What you would like to find?',
                style:GoogleFonts.nunito(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[900],
                ) ,),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:_icons.
                asMap().
                entries.map(
                        (e) => _buildIcon(e.key),
                ).toList()
              ),
              Destination_carousel(),
              SizedBox(height:2.0),
              HotelCarousel(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value){
          setState(() {
            _currentTab = value;
          });
        },
          currentIndex:_currentTab,
          items:[
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
          title:SizedBox.shrink(),
        ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_pizza),
              title:SizedBox.shrink(),
            ),

            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15.0,
                backgroundImage: AssetImage('assets/images/jett.png'),
              ),
              title:SizedBox.shrink(),
            ),
          ]
      ),

    );
  }
}


