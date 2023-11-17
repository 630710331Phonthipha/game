import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:game/home/home_page/Playone.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_1.png'),
            fit: BoxFit.cover, // Stretch the image to cover the screen
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Random Number',
                textAlign: TextAlign.center,
                style: GoogleFonts.sriracha(
                  color: Colors.white,
                  fontSize: 80,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Playone page when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Playone()),
                  );
                },
                child: Text(
                    'Start Game', textAlign: TextAlign.center,
                  style: GoogleFonts.sriracha(
                    color: Colors.black,
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
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