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
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(256.0),
                        child: Image.asset(
                          'assets/pic.png',
                          height: 180,
                          width: 180,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
