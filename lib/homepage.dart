import 'package:day_eight_study/adobo.dart';
import 'package:day_eight_study/arrozcaldo.dart';
import 'package:day_eight_study/lumpia.dart';
import 'package:day_eight_study/sinigang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 8 Study'),
      ),
      backgroundColor: Colors.lightBlue.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/tongue (2).png'),
            CarouselSlider(
                items: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/arrozcaldo.jpg'),
                        ),
                      ),
                      Text(
                        'Chicken Arroz Caldo',
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return ArrozCaldo();
                            }));
                          },
                          child: Text('Learn More'))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/adobo.jpg'),
                        ),
                      ),
                      Text(
                        'Chicken Adobo',
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return Adobo();
                            }));
                          },
                          child: Text('Learn More'))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/lumpia.jpg'),
                        ),
                      ),
                      Text(
                        'Lumpia Shanghai',
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return Lumpia();
                            }));
                          },
                          child: Text('Learn More'))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/sinigang.png'),
                        ),
                      ),
                      Text(
                        'Pork Sinigang',
                        style: TextStyle(fontSize: 22),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return Sinigang();
                            }));
                          },
                          child: Text('Learn More'))
                    ],
                  ),
                ],
                options:
                    CarouselOptions(enableInfiniteScroll: true, height: 500)),
          ],
        ),
      ),
    );
  }
}
