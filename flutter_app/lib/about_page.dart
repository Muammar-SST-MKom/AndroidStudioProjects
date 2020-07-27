import 'package:flutter/material.dart';
import 'package:httpd_server/http_server.dart';

class HomePage extends StatefulWidget {
  static String tag = 'HomePage';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> with SingleTickerProviderStateMixin {
  //create controller untuk tabBar
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final gambar = Hero(
      tag: Hero,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 70.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/user.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat Datang Di Aplikasi Keudee Online Powered By Muammar SST',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final kata = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
          'Selamat datang Di aplikasi Keudee Online Powered By Muammar SST'
          ' aplikasi Merupakan Sebuah wadah untuk menampung berbagai informasi'),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      child: Column(
        children: <Widget>[gambar, welcome, kata],
      ),
    );
    return new Scaffold(
      body: body,
      //untuk tab bar bagian bawah
      bottomNavigationBar: new Material(
        borderRadius: BorderRadius.circular(50.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 10.0,
        color: Colors.deepOrangeAccent,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
              text: "Home",
            ),
            new Tab(icon: new Icon(Icons.search)),
            new Tab(icon: new Icon(Icons.shopping_cart)),
            new Tab(icon: new Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
