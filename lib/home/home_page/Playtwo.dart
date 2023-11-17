import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Playtwo extends StatefulWidget {
  final String playoneNumber;

  Playtwo({required this.playoneNumber});

  @override
  _PlaytwoState createState() => _PlaytwoState();
}

class _PlaytwoState extends State<Playtwo> {
  TextEditingController _playtwoController = TextEditingController();

  @override
  void dispose() {
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
                'คนที่สอง ลองทายเลข',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: _playtwoController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'ทายเลข',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  String collectNumber = _playtwoController.text;
                  String result = 'ผลลัพธ์: ';

                  if (collectNumber == widget.playoneNumber) {
                    result += 'ถูกต้อง!';
                  } else if (int.parse(collectNumber) > int.parse(widget.playoneNumber)) {
                    result += 'ผิด, เลขที่ทายมากกว่า!';
                  } else {
                    result += 'ผิด, เลขที่ทายน้อยกว่า!';
                  }
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('ผลลัพธ์'),
                        content: Center(
                          child: Column(
                            children: [
                              Text(result),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  'ตรวจสอบ',
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