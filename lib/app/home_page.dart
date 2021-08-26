import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;

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
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 200,
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: ExactAssetImage('assets/pic.png'),
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                          ),
                        ),
                      ),
                    ),
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
