import 'package:flutter/material.dart';

class Addtaskscreen extends StatefulWidget {
  const Addtaskscreen({super.key});

  @override
  State<Addtaskscreen> createState() => _AddtaskscreenState();
}

class _AddtaskscreenState extends State<Addtaskscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCE8E6),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Tudee',
          style: TextStyle(fontFamily: 'Cheryy', color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 32),
          Padding(
            padding:EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add Task',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.note_add_outlined,
                  size: 26,
                  color: Colors.black87,
                ),
              ],
            ),
          ),
SizedBox(height: 15,),
Padding(
  padding:  EdgeInsets.symmetric(horizontal: 26,vertical: 10),
  child: TextField(
  decoration: InputDecoration(
    hintText: 'What needs to be done?',
    hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    )
  ),
  ),
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
                    Navigator.pushNamed(context, '/EditTask');
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
    );
  }
}
