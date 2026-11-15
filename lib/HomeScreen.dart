import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFFCE8E6),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Tudee',
          style: TextStyle(fontFamily: 'Cheryy', color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 177,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Welcome Ahmed',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),

                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 33, bottom: 8),
                        child: Container(
                          width: 144,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xFF74C69D),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/image1.png'),
                              SizedBox(height: 4),
                              Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Done',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                       SizedBox(width: 12),
                      Padding(
                        padding:  EdgeInsets.only(left: 20, bottom: 8),
                        child: Container(
                          width: 144,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Color(0xFF9381FF),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/image2.png'),
                              SizedBox(height: 4),
                              Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'To-Do',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 18,
                                ),
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
          isEmpty
              ? Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: double.infinity,
              height: 180,
              padding:  EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'No tasks for today!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Tap the + button to add your first one.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          )
    :Column(
            children: [
              SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color:  Color(0xFF74C69D),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Done',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Organize Study Desk',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 12),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: double.infinity,
              padding:  EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color:  Color(0xFF9381FF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  Text(
                      'TODO',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Learn Flutter',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
            ],
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
     Navigator.pushNamed(context, '/AddTask');

        },
        child: Image.asset(
          'assets/images/Add Button.png',
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
