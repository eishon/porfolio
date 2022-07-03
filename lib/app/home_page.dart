import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HomePage extends StatelessWidget {
  late Size _screenSize;

  @override
  Widget build(BuildContext context) {
    _screenSize = MediaQuery.of(context).size;

    Widget youtubeVideo(String videoCode) {
      return SizedBox(
        height: 315,
        width: 560,
        child: Html(
          data:
              '<iframe width="560" height="315" src="https://www.youtube.com/embed/$videoCode" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
        ),
      );
    }

    List list = [
      'Hqgi_7droLE&t',
      'XL8YCOJatNQ&t',
      'jT49R3fj7hs',
      'wpaJt358J3E&t',
      'lFkxmUYvuNY',
      'wiaZfO2RnnI'
    ];

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
                    Positioned(
                      top: 0,
                      child: Image.network(
                        'https://picsum.photos/seed/picsum/${_screenSize.width}/360',
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(256.0),
                        child: Image.asset(
                          'assets/pic.png',
                          height: 256,
                          width: 256,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              Container(
                height: 200,
                child: Text(
                  'Hi, I am Eishon.\n\nA passonate software Engineer with various experince in mobile application development.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 100),
              Container(
                height: 720,
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  children: list.map((url) => youtubeVideo(url)).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
