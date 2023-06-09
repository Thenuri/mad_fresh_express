import 'package:flutter/material.dart';

class purchasehistory extends StatefulWidget {
  const purchasehistory({ Key? key }) : super(key: key);

  @override
  State<purchasehistory> createState() => _purchasehistoryState();
}

class _purchasehistoryState extends State<purchasehistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'),),
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}