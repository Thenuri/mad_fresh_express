import 'package:flutter/material.dart';


class promotions extends StatefulWidget {
  const  promotions({ Key? key }) : super(key: key);

  @override
  State<promotions> createState() => _promotionsState();
}

class _promotionsState extends State< promotions> {
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