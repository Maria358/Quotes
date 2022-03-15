import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(home: Quotes()));

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote('You are the world and the world is you', 'KRISHNAMURTI'),
    Quote(
        'It is a waste of energy when we try to conform to a pattern. To conserve energy we must be aware of how we dissipate energy.',
        'KRISHNAMURTI'),
    Quote(
        'Society is an abstraction. Abstraction is not a reality. What is reality is relationship. The relationship between human beings has created what we call society.',
        'KRISHNAMURTI'),
  ];

  Widget QuoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('Awesome quotes'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
            children: quotes
                .map((quote) => QuoteTemplate(quote))
                .toList()));
  }
}

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard ({ required this.quote });

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
           Text(
               quote.text,
               style: TextStyle(fontSize: 18.0, color: Colors.grey[600])
           ),
           const SizedBox(height: 6.0),
           Text(
               quote.author,
               style: TextStyle(fontSize: 18.0, color: Colors.grey[800])
           )
    ]),
        ));
  }
}
