import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text:
            'The greatest glory in living lies not in never falling, but in rising every time we fall',
        author: 'Nelson Mandela'),
    Quote(
        text: 'The way to get started is to quit talking and begin doing.',
        author: 'Walt Disney'),
    Quote(
        text:
            "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking",
        author: 'Steve Jobs'),
  ];

//using function to generate template for cards of quotes
  // Widget quoteTemplate(quote) {
  //   return Card(
  //     margin:const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
  //     child: Padding(
  //       padding: const EdgeInsets.all(12.0),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.stretch,
  //         children: <Widget>[
  //           Text(
  //           quote.text,
  //           style: TextStyle(
  //             fontSize: 18.0,
  //             color: Colors.grey[600],
  //           ),),
  //           const SizedBox(height: 6.0,),
  //           Text(
  //             quote.author,
  //             style: TextStyle(
  //               fontSize: 14.0,
  //               color: Colors.grey[800],
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Better way of using and generating template
  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // old way without function
        // children: quotes
        //     .map((quote) => Text('${quote.text} - ${quote.author}'))
        //     .toList(),

        // new way with function and card
        // children: quotes.map((quote) => quoteTemplate(quote)).toList(),

        children: quotes.map((quote) => QuoteCard(quote:quote)).toList(),

      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}
