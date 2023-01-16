import 'package:demo/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        leading: Builder(builder: (context) {
          return IconButton(
            alignment: Alignment.centerLeft,
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => dashboard()));
            },
          );
        }),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: IconButton(
              icon: Icon(
                Icons.mail,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: IconButton(
              icon: Icon(
                Icons.location_on,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: IconButton(
              icon: Icon(
                Icons.call,
              ),
              onPressed: () {},
            ),
          ),
        ],
        title: Text('Contact'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Card(
            margin: const EdgeInsets.all(20),
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.greenAccent[100],
            child: SizedBox(
              width: 350,
              height: 450,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(110),
                        child: Image.asset(
                          'picture/culib.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Çukurova University',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.green[900],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.call,
                          ),
                          onPressed: () {},
                        ),
                        Text("+0212 201 01 01 ")
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.mail,
                          ),
                          onPressed: () {},
                        ),
                        Text("kutuphane@cu.edu.tr")
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(20),
            elevation: 50,
            shadowColor: Colors.black,
            color: Colors.greenAccent[100],
            child: SizedBox(
              width: 350,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.location_on,
                          ),
                          onPressed: () {},
                        ),
                        Text(
                          'Çukurova University',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(110),
                        child: Image.asset(
                          'picture/maps.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          const url =
                              "https://www.google.com/maps/place/%C3%87ukurova+%C3%9Cniversitesi+K%C3%BCt%C3%BCphanesi/@37.060006,35.3549872,15z/data=!4m5!3m4!1s0x0:0x6599a721a95110!8m2!3d37.0600084!4d35.3550425";
                          launchURL(url);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Row(
                            children: const [
                              Icon(Icons.touch_app),
                              Text('Visit')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
