import 'package:flutter/material.dart';

class Edittaskscreen extends StatefulWidget {
  const Edittaskscreen({super.key});

  @override
  State<Edittaskscreen> createState() => _EdittaskscreenState();
}

class _EdittaskscreenState extends State<Edittaskscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCE8E6),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Tudee',
          style: TextStyle(fontFamily: 'Cheryy', color: Colors.white),
        ),
      ),
      body: Column(
        children: [
           SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Edit Task',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.edit_calendar, size: 28, color: Colors.black87),
              ],
            ),
          ),
           SizedBox(height: 35),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              height: 110,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child:  Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Learn Flutter',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
            ),
          ),
           SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 102,
                height: 36,
                decoration: BoxDecoration(
                  color:  Color(0xFF9887F5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.sync, color: Colors.white, size: 18),
                    SizedBox(width: 6),
                    Text(
                      'To Do',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
               SizedBox(width: 12),
              Container(
                width: 102,
                height: 36,
                decoration: BoxDecoration(
                  color:  Color(0xFFB5D8C7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: SizedBox(
              width: 380,
              height: 100,
              child: Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 1,
                  vertical: 20,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    backgroundColor: Color(0xFF49BAF2),
                  ),
                  child: Text(
                    'Save changes',
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}