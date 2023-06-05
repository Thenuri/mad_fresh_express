import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  String selectedLocation = '';

  void saveLocation(String location) {
    setState(() {
      selectedLocation = location;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Location'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Location',
              ),
              onChanged: (value) {
                selectedLocation = value;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, selectedLocation);
              },
              child: Text('Save Location'),
            ),
          ],
        ),
      ),
    );
  }
}
