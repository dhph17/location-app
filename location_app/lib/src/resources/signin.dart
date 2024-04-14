import 'package:flutter/material.dart';

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
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xff000D2D),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(top: screenSize.height * 0.05),
              child: Center(
                child: Container(
                  height: screenSize.height * 0.15,
                  width: screenSize.width * 0.25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.22,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'GPS Tracker',
                style: TextStyle(
                  fontSize: screenSize.width * 0.08,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: const Color(0xffDA9F5C),
              child: Padding(
                padding: EdgeInsets.all(screenSize.width * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Personal Details ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        _buildTextField('First Name', screenSize),
                        SizedBox(height: screenSize.height * 0.005),
                        _buildTextField('Last Name', screenSize),
                        SizedBox(height: screenSize.height * 0.005),
                        _buildTextField('Seri Number', screenSize),
                        SizedBox(height: screenSize.height * 0.005),
                        _buildTextField('Email Address', screenSize),
                        SizedBox(height: screenSize.height * 0.005),
                        _buildTextField('Password', screenSize),
                        SizedBox(height: screenSize.height * 0.01),
                      ],
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffE000D2D),
                          foregroundColor: const Color(0xffFFE8E8),
                          padding: EdgeInsets.symmetric(
                            horizontal: screenSize.width * 0.15,
                            vertical: screenSize.height * 0.01,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String labelText, Size screenSize) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: const TextStyle(
              color: Color(0xff3D3737),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: screenSize.height * 0.005),
          TextField(
            decoration: InputDecoration(
              hintStyle: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: const Color(0xffD6AC7D),
              contentPadding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.05,
                vertical: screenSize.height * 0.01,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


