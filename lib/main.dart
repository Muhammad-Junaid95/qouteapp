import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.yellow),
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> quotes = [
    "\"The ultimate aim of the ego is not to see something, but to be something.\"",
    "\"Thou art not for the earth, nor for the Heaven the world is for thee, thou art not for the world.\"",
    "\"The soul is neither inside nor outside the body; neither proximate to nor separate from it.\"",
    "\"A wrong concept misleads the understanding; a wrong deed degrades the whole man, and may eventually demolish the structure of the human ego.\"",
    "\"Be not entangled in this world of days and nights; Thou hast another time and space as well.\"",
    "\"The wing of the Falcon brings to the king, the wing if the crow brings him to the cemetery.\"",
    "\"The ultimate purpose of religious life is to make this evolution move in a direction far more important to the destiny of the ego than the moral health of the social fabric which forms his present environment.\"",
    "\"Why should I ask the wise men: Whence is my beginning? I am busy with the thought: Where will be my end?\"",
    "\"People who have no hold over their process of thinking are likely to be ruined by liberty of thought. If thought is immature, liberty of thought becomes a method of converting men into animals.\"",
    "\"The possibility of a scientific treatment of history means a wider experience, a greater maturity of practical reason, and finally a fuller realization of certain basic ideas regarding the nature of life and time.\"",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '"IQBAL\'S  POETRY"',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              fontSize: 25),
        ),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (1 / .7),
          shrinkWrap: true,
          children: List.generate(10, (index) {
            return QuoteContainer(
              quote: quotes[index],
            );
          }),
        ),
      ),
    );
  }
}

class QuoteContainer extends StatelessWidget {
  final String quote;

  QuoteContainer({required this.quote});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => QuotePage(quote)),
        );
      },
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(15),
        color: Color.fromARGB(255, 108, 167, 196),
        child: Center(
          child: Text(
            quote,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class QuotePage extends StatelessWidget {
  final String quote;

  QuotePage(this.quote);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('Iqbal\'s Qoute'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(
            '${quote.toUpperCase()}\n\nMuhammad Iqbal',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}
