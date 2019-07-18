import 'dart:io';

import 'package:flutter/cupertino.dart';
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
  List<Location> items;

  @override
  void initState() {
    client.setAuthToken(
        token:
            'EAAAEF6M57K-wC3WrDFaDW80jMZ8KHNCzBbFVWtmg0bZifLJ3XVdcJGta7OgaLuS');
    super.initState();
    _refreshItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Platform.isAndroid
          ? AppBar(
              title: Text('Square Connect Demo App'),
            )
          : CupertinoNavigationBar(
              middle: Text('Square Connect Demo App'),
            ),
      body: Center(
        child: this.items == null
            ? Container(
                child: Platform.isAndroid
                    ? CircularProgressIndicator()
                    : CupertinoActivityIndicator())
            : ListView.builder(
                itemCount: this.items.length,
                itemBuilder: (context, index) {
                  var location = items[index];
                  return this.items == null
                      ? Container()
                      : ListTile(
                          title: Text(location.address.addressLine1),
                          subtitle: Text(
                              '${location.address.locality}, ${location.address.administrativeDistrictLevel1}'),
                          onTap: () => location.businessHours.periods != null
                              ? Platform.isIOS
                                  ? Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              LocationHoursWidget(
                                                location: location,
                                              )))
                                  : Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LocationHoursWidget(
                                                location: location,
                                              )))
                              : Platform.isAndroid
                                  ? Scaffold.of(context).showSnackBar(SnackBar(
                                      content:
                                          Text('No Hours for This Location'),
                                    ))
                                  : showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                            content: Text(
                                                'No Hours for This Location'),
                                            actions: <Widget>[
                                              CupertinoDialogAction(
                                                child: Text('OK'),
                                                onPressed: () =>
                                                    Navigator.pop(context),
                                              )
                                            ],
                                          )),
                        );
                },
              ),
      ),
      floatingActionButton: Platform.isAndroid
          ? FloatingActionButton(
              onPressed: _refreshItems,
              child: Icon(Icons.refresh),
            )
          : CupertinoButton.filled(
              child: Icon(Icons.refresh),
              onPressed: _refreshItems,
            ),
      floatingActionButtonLocation: Platform.isAndroid
          ? FloatingActionButtonLocation.endFloat
          : FloatingActionButtonLocation.centerFloat,
    );
  }

  _refreshItems() async {
    setState(() {
      this.items = null;
    });
    var response = await client.locationsApi.listLocations();
    setState(() {
      this.items = response.locations;
    });
  }
}

class LocationHoursWidget extends StatelessWidget {
  const LocationHoursWidget({Key key, this.location}) : super(key: key);

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Platform.isAndroid
          ? AppBar(
              title: Text('Hours: ${location.address.addressLine1}'),
            )
          : CupertinoNavigationBar(
              middle: Text('Hours: ${location.address.addressLine1}'),
            ),
      body: Container(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('Sunday:'),
              subtitle: Text(location.businessHours.periods
                      .singleWhere(
                          (period) => period.dayOfWeek == DayOfWeek.sunday)
                      .startLocalTime
                      .niceString +
                  ' - ' +
                  location.businessHours.periods
                      .singleWhere(
                          (period) => period.dayOfWeek == DayOfWeek.sunday)
                      .endLocalTime
                      .niceString),
              selected: DateTime.now().weekday == 7,
            ),
            ListTile(
              title: Text('Monday:'),
              subtitle: Text(location.businessHours.periods
                      .singleWhere(
                          (period) => period.dayOfWeek == DayOfWeek.monday)
                      .startLocalTime
                      .niceString +
                  ' - ' +
                  location.businessHours.periods
                      .singleWhere(
                          (period) => period.dayOfWeek == DayOfWeek.monday)
                      .endLocalTime
                      .niceString),
              selected: DateTime.now().weekday == 1,
            ),
            ListTile(
                title: Text('Tuesday:'),
                subtitle: Text(location.businessHours.periods
                        .singleWhere(
                            (period) => period.dayOfWeek == DayOfWeek.tuesday)
                        .startLocalTime
                        .niceString +
                    ' - ' +
                    location.businessHours.periods
                        .singleWhere(
                            (period) => period.dayOfWeek == DayOfWeek.tuesday)
                        .endLocalTime
                        .niceString),
                selected: DateTime.now().weekday == 2),
            ListTile(
                title: Text('Wednesday:'),
                subtitle: Text(location.businessHours.periods
                        .singleWhere(
                            (period) => period.dayOfWeek == DayOfWeek.wednesday)
                        .startLocalTime
                        .niceString +
                    ' - ' +
                    location.businessHours.periods
                        .singleWhere(
                            (period) => period.dayOfWeek == DayOfWeek.wednesday)
                        .endLocalTime
                        .niceString),
                selected: DateTime.now().weekday == 3),
            ListTile(
                title: Text('Thursday:'),
                subtitle: Text(location.businessHours.periods
                        .singleWhere(
                            (period) => period.dayOfWeek == DayOfWeek.thursday)
                        .startLocalTime
                        .niceString +
                    ' - ' +
                    location.businessHours.periods
                        .singleWhere(
                            (period) => period.dayOfWeek == DayOfWeek.thursday)
                        .endLocalTime
                        .niceString),
                selected: DateTime.now().weekday == 4),
            ListTile(
                title: Text('Friday:'),
                subtitle: Text(location.businessHours.periods
                        .singleWhere(
                            (period) => period.dayOfWeek == DayOfWeek.friday)
                        .startLocalTime
                        .niceString +
                    ' - ' +
                    location.businessHours.periods
                        .singleWhere(
                            (period) => period.dayOfWeek == DayOfWeek.friday)
                        .endLocalTime
                        .niceString),
                selected: DateTime.now().weekday == 5),
            ListTile(
                title: Text('Saturday:'),
                subtitle: Text(location.businessHours.periods
                        .singleWhere(
                            (period) => period.dayOfWeek == DayOfWeek.saturday)
                        .startLocalTime
                        .niceString +
                    ' - ' +
                    location.businessHours.periods
                        .singleWhere(
                            (period) => period.dayOfWeek == DayOfWeek.saturday)
                        .endLocalTime
                        .niceString),
                selected: DateTime.now().weekday == 6),
          ],
        ),
      ),
    );
  }
}
