import 'package:feshexpress/pages/location.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class purchasehistory extends StatefulWidget {
  const purchasehistory({ Key? key }) : super(key: key);

  @override
  State<purchasehistory> createState() => _purchasehistoryState();
}

class _purchasehistoryState extends State<purchasehistory> {
  @override
  Widget build(BuildContext context) {
     Color topic = Theme.of(context).brightness == Brightness.dark ? HexColor("#0EC42B") : HexColor("#4D4B4B");
    Color topicn = Theme.of(context).brightness == Brightness.dark ? HexColor("#FFFFFF") : HexColor("#4D4B4B");
    Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;
    Color subtext = Theme.of(context).brightness == Brightness.dark ? HexColor("#FFFFFF") : HexColor("#848484");

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:24.0, top: 72.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: topic,
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Go back when the icon is tapped
                    },
                  ),
                  Padding(
                    padding: MediaQuery.of(context).orientation == Orientation.portrait
                        ? const EdgeInsets.only(left: 20.0)
                        : const EdgeInsets.only(left: 290.0),
                    child: Text(
                      'Purchase History',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: topic,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 33.0),
              child: Container(
              width: 330,
              height: 130,
              decoration: BoxDecoration(
                color: navbar,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: HexColor("#848484"),
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:2.0),
                          child: Row(
                            children: [
                              Text(
                                'Order Number 01',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                              ),
                              SizedBox(width:19),
                              Text(
                            'Rs 1000.00',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#19647E"),
                            ),
                          ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Row(
                            children: [
                              Text(
                                '2023/8/5',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: subtext,
                                ),
                              ),SizedBox(width: 5,),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return const Location();
                                }),
                              ),
                              child: Container(
                                width: 108,
                                height: 35,
                                decoration: BoxDecoration(
                                color: navbar,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: HexColor("#848484"),
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'View Order',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: HexColor("#19647E"),
                            
                                  ),
                                ),
                              ),
                              ),
                            ),
                            SizedBox(width: 75),
                            Container(
                              width: 108,
                              height: 35,
                              decoration: BoxDecoration(
                                color: HexColor("#0EC42B"),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'Re Order',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                            )
                          ],
                        ),   
                      ],
                    ),
                  ),  
                ],  
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}