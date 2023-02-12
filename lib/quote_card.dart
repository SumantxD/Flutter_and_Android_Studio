import 'package:flutter/material.dart';
import 'quote.dart';

//this is the quote card (itself) that we extracted
class QuoteCard extends StatelessWidget{

  //this is the instance of the quote class that we imported
  late final Quote quote;//quote is the local variable and Quote is the class object
  final VoidCallback delete;
  //below is the constructor of the QuoteCard class
  //we have to pass all the variable passed here when creating the instance of it's class
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6,),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800]
              ),
            ),
            SizedBox(height: 8,),
            TextButton.icon(
                onPressed:  delete,
                label: Text('delete quote'),
                icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
