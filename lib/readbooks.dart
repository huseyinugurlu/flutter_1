import 'package:demo/book.dart';
import 'package:flutter/material.dart';

List<Book> book = [
  Book('Fareler ve İnsanlar', 'John Steinbeck', 'Turkish', 'Sel Yayıncılık',
      'picture/book1.jpg', 111),
];
Book book1 = book[0];
String book1name = book1.name;
String book1author = book1.author;
String book1language = book1.language;
String book1publisher = book1.publisher;
String book1image = book1.images;
int book1pagenumber = book1.pageNumber;

class readbooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Read Books'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ), //AppBar
      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 300,
            height: 460,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(144),
                      child: Image.asset(
                        '$book1image',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    book1name,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Author: $book1author',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Publisher: $book1publisher',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Number of Page: $book1pagenumber Dil: $book1language',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
