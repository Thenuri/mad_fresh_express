import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';


import '../components/custom_navigation_bar1.dart';
import '../components/itemtiles.dart';
import '../model/item_model.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int _selectedIndex=0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: HexColor("#0EC42B"), // Set the border color here
                    width: 1.0,
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                    hintText: 'Search',
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Consumer<ItemModel>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.items.length,
                    padding: EdgeInsets.all(20.0),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 138/198,
                    ),
                    itemBuilder: (context, index) {
                      return ItemTiles(
                        image: value.items[index][0],
                        title: value.items[index][1],
                        price: value.items[index][2],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBarnew(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
        // Add your bottom navigation bar configuration here
      ),
    );
  }
}
