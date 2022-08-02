import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Elon Musk\'s Resume',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://media.vanityfair.com/photos/58ed4db975dd30329d3c49c4/5:3/w_1440,h_864,c_limit/elon-musk-detroit.jpg',
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text(
                        'ELON MUSK',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'CEO, Entrepreneur, Engineer, Inventor',
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                      Text(
                        'elon.musk@teslamotors.com',
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.call,
                        color: Colors.black,
                      ),
                      Text(
                        '(310) 420-1541',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Summary :',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'Successful entrepreneur with 20+ years founding and steering highly profitable companies. Seeking to leverage my passion for innovation to tackle climate change and ensure human progress through sustainable manufacturing and space exploration initiatives.',
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Founder :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('The Boring Company (2017)'),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'Co-Founder :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('SolarCity (2017)'),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'CEO :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Tesla (2004)'),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        'CEO & Founder :',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('SpaceX (2002)'),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Skills :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Card(text: 'Product Development', color: Colors.purple),
                  const SizedBox(
                    height: 10,
                  ),
                  const Card(text: 'Product Development', color: Colors.blue),
                  const SizedBox(
                    height: 10,
                  ),
                  const Card(text: 'Product Development', color: Colors.orange),
                  const SizedBox(
                    height: 10,
                  ),
                  const Card(text: 'Product Development', color: Colors.green),
                  const SizedBox(
                    height: 10,
                  ),
                  const Card(text: 'Product Development', color: Colors.pink),
                  const SizedBox(
                    height: 10,
                  ),
                  const Card(text: 'Product Development', color: Colors.brown),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key, required this.text, required this.color})
      : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 25,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(text),
    );
  }
}
