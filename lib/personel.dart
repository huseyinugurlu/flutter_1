import 'dart:io';

import 'package:demo/changepw.dart';
import 'package:demo/contact.dart';
import 'package:demo/deadline.dart';
import 'package:demo/qrScanner.dart';
import 'package:demo/readbooks.dart';
import 'package:flutter/material.dart';

import 'books.dart';

class personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Iva Landeka',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'iva.landeka@gmail.com',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('picture/cu.png')),
            ),
          ),
          ListTile(
              leading: Icon(Icons.book),
              title: Text('Books'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => books()));
              }),
          ListTile(
            leading: Icon(Icons.qr_code_scanner),
            title: Text('Borrow'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ScanQrPage()));
            },
          ),
          ListTile(
              leading: Icon(Icons.library_books),
              title: Text('Read'),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => readbooks()));
              }),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Deadline'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => deadline()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.key),
            title: Text('Change Password'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => changepw()));
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_support),
            title: Text('Contact'),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Contact()));
            },
          ),
          Divider(),
          ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.exit_to_app),
              onTap: () => showAlert(context)),
        ],
      ),
    );
  }
}

void showAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Warning!'),
        content: Text("Are You Sure Want To Close ?"),
        actions: <Widget>[
          ElevatedButton(
            child: Text("YES"),
            onPressed: () {
              //Put your code here which you want to execute on Yes button click.
              exit(0);
            },
          ),
          ElevatedButton(
            child: Text("NO"),
            onPressed: () {
              //Put your code here which you want to execute on No button click.
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            child: Text("CANCEL"),
            onPressed: () {
              //Put your code here which you want to execute on Cancel button click.
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
