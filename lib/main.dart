import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        fontFamily: 'FontLato',
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            debugPrint("working");
          },
          label: const Text('New products',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )),
          icon: const Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Products',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              )),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_balance_wallet_rounded,
              color: Colors.blue,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ListTile(
                  leading: Image.network('https://www.kindpng.com/picc/m/431-4313191_sketsa-sepatu-hd-png-download.png'),
                  title: Text(
                    'Brand new shoes',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    'SH-213',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ));
          },
        ));
    ;
    ;
    ;
    ;
  }
}
