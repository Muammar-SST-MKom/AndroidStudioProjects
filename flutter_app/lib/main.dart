import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/providers/barang_provider.dart';
import './home_page.dart';
import './login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MultiProvide(
      providers:[
        ChangeNotifierProvider(
          create: (_) => BarangProvider(),
        )
      ],


      child : MaterialApp(
        title: 'Keudee Online Powered By Muammar SST',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          fontFamily: 'Nunito',
        ),
        home: LoginPage(),
        routes: routes,
      ),
    );
  }
}
