import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Explore and Locate',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold, 
                color: Color(0xffFCA747),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xffFCA747),
              ),
              textAlign: TextAlign.center,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
              child: Text(
                'Lorem ipsum dolor sit amet, conse'
                'ctetur adipiscing elit, sed do eiusmod'
                'tempor',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  print('Test start');
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD9D9D9),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                ),
                child: const Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ', 
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      print("test sign in");
                    },
                    child: const Text(
                      'Sign in', 
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.orange,
                        decoration: TextDecoration.underline, // Thêm gạch chân khi hover vào "Sign in"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
