import 'package:flutter/material.dart';
import 'package:square_connect/square_connect.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final client = SquareConnect.instance;
  CatalogItem item;

  @override
  void initState() {
    client.setAuthToken(token: 'EAAAEF6M57K-wC3WrDFaDW80jMZ8KHNCzBbFVWtmg0bZifLJ3XVdcJGta7OgaLuS');
    super.initState();
    _refreshItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Square Connect Demo App'),
      ),
      body: Center(
        child: Text(item != null ? item.name : ''),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _refreshItems,
        tooltip: 'Increment',
        child: Icon(Icons.refresh),
      ), 
    );
  }

  _refreshItems() async{
    var response = await client.catalogApi.retrieveCatalogObject(objectId: 'L3N4FU22JFINH4ZGZDMBKJBJ');
    setState(() {
      item = response.object.itemData;
    });
  }
}
