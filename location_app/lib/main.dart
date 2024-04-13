
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// void main(List<String> args) {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('GPS Tracker',
//             style: TextStyle(
//               fontSize: 32,
//               color: Colors.white,
//               decoration: TextDecoration.underline,
//               decorationColor: Colors.white,
//             )),
//         backgroundColor: const Color(0xff000D2D),
//       ),
//       body: Container(
//         color: const Color(0xffC0D2FD),
//         child: const Column(
//           children: <Widget>[
//             Padding(
//               padding: EdgeInsets.fromLTRB(0,0,0,40),
//               child: Text(
//                 'Hello',
//                 style: TextStyle(
//                   color: Colors.purple,
//                   fontSize: 44,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.fromLTRB(0,0,0,40),

//             )            
//           ],
//         ),
//       ),
//     );
//   }
// }





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'GPS Tracker',
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff000D2D),
        toolbarHeight: 60,
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xffC0D2FD),
          ),
          const Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Enter the 6-Digit code sent from your gmail account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFCA747),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
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
