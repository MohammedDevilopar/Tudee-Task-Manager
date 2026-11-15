import 'package:flutter/material.dart';

class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFFCE8E6),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Tudee',
          style: TextStyle(fontFamily: 'Cheryy', color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 38),
            Text(
              'Lets get started',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 26),
            Text(
              'What should we call you?',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Your name',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            Center(
              child: SizedBox(
                width: double.infinity,
                height: 100,
                child: Padding(
                  padding:  EdgeInsets.symmetric(
                    horizontal: 1,
                    vertical: 20,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      backgroundColor: Color(0xFF49BAF2),
                    ),

                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 21, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
