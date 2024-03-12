import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({Key? key}) : super(key: key);

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 35, 44),
        leading: IconButton(
          icon: SizedBox(
            height: 200,
            width: 200, // Set the desired width here
            child: Image.asset(
              'assets/Logo.png',
              height: 200, // Set the desired height here
            ),
          ),
          onPressed: () {},
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.redeem, color: Colors.white),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(
              255, 6, 35, 44), // Change this to the desired background color
        ),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 40,
                    width: 155,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 44, 71, 81),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.map,
                              color: Colors.white,
                            ),
                          ),
                          const Text(
                            'São Paulo',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.1),
                            child: Icon(
                              Icons.expand_more,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 44, 71, 81),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        const Text('Descubra ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey)),
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
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(2.1),
                          child: Container(
                            width: 38,
                            height: 38,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 69, 110, 124),
                                shape: BoxShape.circle),
                            child:
                                Icon(Icons.calendar_today, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('Para Você',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          SizedBox(
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Image.asset('hotWheelsEvento.jpg', width: 300, height: 150),
                 const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: SizedBox(
                    width: 65,
                    child: Card(
                      color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text('4.7'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
