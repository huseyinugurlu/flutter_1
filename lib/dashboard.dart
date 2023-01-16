import 'package:demo/personel.dart';
import 'package:demo/search.dart';
import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  String announcements1 =
      "Attention Our Readers!!! Our library will serve between 8.00 am - 5.00 pm on weekdays from January 14, 2023 until February 6, 2023. It will be closed in the evenings and weekends.";
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: personal(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        leading: Builder(builder: (context) {
          return IconButton(
            alignment: Alignment.centerLeft,
            icon: Icon(
              Icons.person_outline,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
              // navigateNextPage(context);
            },
          );
        }),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate());
              },
            ),
          ),
        ],
        title: Text('Library'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.green,
                  width: 10,
                ),
              ),
              width: 420,
              child: new Image.asset(
                'picture/lib.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                margin: const EdgeInsets.all(20.0),
                constraints: const BoxConstraints(
                  maxWidth: 400,
                ),
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "~Announcements~",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.orange),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              margin: const EdgeInsets.all(5.0),
              constraints: const BoxConstraints(
                maxWidth: 400,
              ),
              child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    "=>$announcements1",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
