import 'package:flutter/material.dart';

class GreetingApp extends StatelessWidget {
  const GreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1️⃣ Hello World text with styling
            Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red, // 🔴 Make text red
                fontWeight: FontWeight.bold, // 🔥 Make text bold
                fontSize: 28,
              ),
            ),

           SizedBox(height: 10),

            // 2️⃣ Additional Text
            Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 20),
            ),

             SizedBox(height: 20),

            // 3️⃣ Image (Optional)
            Image.network(
              'https://yt3.googleusercontent.com/ytc/AIdro_nqx_sCd8ZIeIcodS0sfeMKJ8rVTslmQHUe_udwGNH2Pg=s900-c-k-c0x00ffffff-no-rj',
              width: 150,
            ),

           SizedBox(height: 30),

            // 4️⃣ Button with Snack bar
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // ✅ Button color green
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(
                    content: Text('Button Pressed!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}

