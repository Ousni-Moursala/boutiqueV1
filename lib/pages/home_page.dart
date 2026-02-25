import 'package:flutter/material.dart';

import 'event_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Boutique 2026",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.white60,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 35,vertical: 80),
        child: Center(
          child: Column(

            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Padding(padding: EdgeInsets.only(top: 50)),

              Image.asset("assets/images/logo1.jpeg"),

              Text("Gerez votre boutique",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Gerez, vendez, et developpez votre boutique en toute liberte !",
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),


              Padding(padding: EdgeInsets.only(top: 160)),

              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                       // Padding(padding: EdgeInsets.only(top: 16)),
                        side: BorderSide(color: Colors.transparent),
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Text("Je me lance",
                        style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
                      ),

                    ),
                  ),

                  const SizedBox(width: 10,),


                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) => EventPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Suivant",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}