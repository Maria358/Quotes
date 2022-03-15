import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(home: Quotes()));

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote('You are the world and the world is you', 'Krishnamurti'),
    Quote(
        'It is a waste of energy when we try to conform to a pattern. To conserve energy we must be aware of how we dissipate energy.',
        'Krishnamurti'),
    Quote(
        'Society is an abstraction. Abstraction is not a reality. What is reality is relationship. The relationship between human beings has created what we call society.',
        'Krishnamurti'),
  ];

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
                .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }))
                .toList()));
  }
}
