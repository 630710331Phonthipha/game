import 'package:flutter/material.dart';
import 'package:game/home/home_page/Playtwo.dart';
import 'package:google_fonts/google_fonts.dart';

class Playone extends StatefulWidget {
  @override
  _PlayoneState createState() => _PlayoneState();
}

class _PlayoneState extends State<Playone> {
  TextEditingController _playoneController = TextEditingController();
  TextEditingController _playtwoController = TextEditingController();

  @override
  void dispose() {
    _playoneController.dispose();
    _playtwoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guess the Number'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'คนแรก กรุณากำหนดเลข',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _playoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'เลขที่คุณกำหนด',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  String secretNumber = _playoneController.text;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Playtwo(
                        secretNumber: secretNumber,
                      ),
                    ),
                  );
                },
                child: Text(
                  'ต่อไป',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sriracha(
                    color: Colors.black,
                    fontSize: 20,
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