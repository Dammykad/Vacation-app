import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          shadowColor: Colors.black,
          elevation: 10, // Set the elevation to create a shadow effect
          title: const Text(
            'My App Bar',
            // Center the text
            style: TextStyle(
              color: Colors.white, // Set the text color to white
              fontWeight: FontWeight.bold, // Make the text bold
              // Center the text
            ),
          ),
          backgroundColor: const Color.fromARGB(
            255,
            72,
            24,
            134,
          ), // Set the background color to green
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(savedSearchOutlined),
              label: 'Discover',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Saved'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
        body: const Center(child: Text('Welcome to My App!')),
      ),
    );
  }
}

// Custom IconData for saved_search_outlined
const IconData savedSearchOutlined = IconData(
  0xf335,
  fontFamily: 'MaterialIcons',
);
