import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

//Ctrl +q  -> parameters
void main() {
  runApp(MiCard());
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage('imageasset/Resume-project-profile.jpg'),
              ),
              Text(
                'CSUN',
                style: GoogleFonts.kronaOne(
                  color: Colors.red[900],
                  letterSpacing: 10,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Computer Scientist',
                style: GoogleFonts.teko(
                  color: Colors.white,
                  fontSize: 40,
                  letterSpacing: 5
                ),
              ),
              SizedBox(
                height: 20,
                width: 250,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: ListTile(
                      leading:Icon(
                        Icons.account_circle_rounded,
                        color: Colors.black,
                      ) ,
                      title: Text(
                        'Frank Serdenia',
                        style: GoogleFonts.hind(
                          fontSize: 16,
                        ),
                      ),

                    )
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ListTile(
                    leading:Icon(
                      Icons.phone,
                      color: Colors.black,
                    ) ,
                    title: Text(
                      '+1(985) 567-8925',
                      style: GoogleFonts.hind(
                        fontSize: 16,
                      ),
                    ),

                  )
                  ),
                ),

              Card(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    title:Text(
                      'frankjoseph.serdenia.530@my.csun.edu',
                      style: GoogleFonts.hind(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.assignment_ind,
                      color: Colors.black,
                    ),
                    title:Text(
                      'LinkedIn: frankjosephserdenia',
                      style: GoogleFonts.hind(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
