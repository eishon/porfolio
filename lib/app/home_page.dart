import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  late Size _screenSize;

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 480,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Image.network(
                      'https://picsum.photos/seed/picsum/${_screenSize.width}/360',
                    ),
                    Positioned(
                      left: 100,
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(256.0),
                        child: Image.asset(
                          'assets/pic.png',
                          height: 256,
                          width: 256,
                          fit:BoxFit.fitWidth,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 200),
              Container(
                height: 200,
                child: Text(
                  'Hi, I am Eishon. I love developing and currently working as a Mobile Application developer',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
