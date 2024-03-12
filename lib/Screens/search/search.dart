import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Search extends StatelessWidget {
  const Search({Key? key});

  Widget cardBusca(double width, double height, String image, String text) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 44, 71, 81),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 35, 44),
        title: SizedBox(
          height: 40,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 44, 71, 81),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Descubra ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        'shows',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RotateAnimatedText(
                        'restaurantes',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RotateAnimatedText(
                        'eventos',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RotateAnimatedText(
                        'exposições',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RotateAnimatedText(
                        'cinemas',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RotateAnimatedText(
                        'espetáculos ao vivo',
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 6, 35, 44),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    cardBusca(
                      215,
                      200,
                      'assets/harrystyles.jpg',
                      "Harry Styles",
                    ),
                    cardBusca(
                      215,
                      200,
                      'assets/eventoslipknot.jpg',
                      "SlipkNot",
                    ),
                  ],
                ),
                Row(
                  children: [
                    cardBusca(
                      215,
                      200,
                      'assets/imaginedragons.jpeg',
                      "Imagine Dragons",
                    ),
                    cardBusca(
                      215,
                      200,
                      'assets/metallica.jpg',
                      "Metallica",
                    ),
                  ],
                ),
                Row(
                  children: [
                    cardBusca(
                      215,
                      200,
                      'assets/pixote.jpg',
                      "Pixote",
                    ),
                    cardBusca(
                      215,
                      200,
                      'assets/alok.jpg',
                      "Alok",
                    ),
                  ],
                ),
                Row(
                  children: [
                    cardBusca(
                      215,
                      200,
                      'assets/articmonkeys.jpeg',
                      "Artic Monkeys",
                    ),
                    cardBusca(
                      215,
                      200,
                      'assets/luansantan.jpg',
                      "Luan Santana",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
