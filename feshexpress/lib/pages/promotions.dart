import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';


class promotions extends StatefulWidget {
  const  promotions({ Key? key }) : super(key: key);

  @override
  State<promotions> createState() => _promotionsState();
}

class _promotionsState extends State< promotions> {
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
                      'Your Loyalty Points',
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
              padding: const EdgeInsets.only(left:120.0, top: 30.0),
              child: Row(
                children: [
                  SvgPicture.string(
                    '''
                      <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48"><g fill="#e1b256" fill-rule="evenodd" clip-rule="evenodd"><path d="M37.972 27.975A12.939 12.939 0 0 0 40 21c0-7.18-5.82-13-13-13c-2.567 0-4.96.744-6.975 2.027a16.953 16.953 0 0 0-3.954.698A14.958 14.958 0 0 1 27 6c8.284 0 15 6.716 15 15a14.96 14.96 0 0 1-4.725 10.929c.381-1.263.62-2.587.697-3.954Z"/><path d="M39.933 28.603a15.065 15.065 0 0 1-2.658 3.326c.381-1.263.62-2.587.697-3.954A12.939 12.939 0 0 0 40 21c0-7.18-5.82-13-13-13c-2.567 0-4.96.744-6.975 2.027a16.953 16.953 0 0 0-3.954.698a15.067 15.067 0 0 1 3.326-2.658A14.93 14.93 0 0 1 27 6c8.284 0 15 6.716 15 15a14.92 14.92 0 0 1-2.067 7.603Z"/><path d="M36 27c0 8.284-6.716 15-15 15c-8.284 0-15-6.716-15-15c0-8.284 6.716-15 15-15c8.284 0 15 6.716 15 15Zm-16-5a2 2 0 1 0 0 4v-4Zm2-2v-1h-2v1a4 4 0 0 0 0 8v4c-.87 0-1.611-.555-1.887-1.333a1 1 0 1 0-1.885.666A4.001 4.001 0 0 0 20 34v1h2v-1a4 4 0 0 0 0-8v-4c.87 0 1.611.555 1.887 1.333a1 1 0 1 0 1.885-.666A4.001 4.001 0 0 0 22 20Zm0 8v4a2 2 0 1 0 0-4Z"/></g></svg>
                    ''',
                    width: 90,
                  ),
                  Text("1000",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    
                    ),
                  ) ,
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:35.0,right: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Expiry Date',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                         
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                          '2023/8/5 ',
                          style: TextStyle(
                          fontSize: 16.0, 
                        ),
                      ),  
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                    padding: MediaQuery.of(context).orientation == Orientation.portrait
                        ? const EdgeInsets.only(left: 5.0, top: 30.0)
                        : const EdgeInsets.only(left: 290.0),
                    child: Text(
                      'Promotions & Discounts',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: topic,
                      ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 33.0),
              child: Container(
              width: 330,
              height: 120,
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
                    padding: const EdgeInsets.only(left:15.0),
                    child: SvgPicture.string(
                      '''
                        <svg xmlns="http://www.w3.org/2000/svg" width="512" height="512" viewBox="0 0 512 512"><path fill="none" stroke="#0ec42b" stroke-linecap="round" stroke-linejoin="round" stroke-width="32" d="M448 448V240m-384 0v208M382.47 48H129.53c-21.79 0-41.47 12-49.93 30.46L36.3 173c-14.58 31.81 9.63 67.85 47.19 69h2c31.4 0 56.85-25.18 56.85-52.23c0 27 25.46 52.23 56.86 52.23s56.8-23.38 56.8-52.23c0 27 25.45 52.23 56.85 52.23s56.86-23.38 56.86-52.23c0 28.85 25.45 52.23 56.85 52.23h1.95c37.56-1.17 61.77-37.21 47.19-69l-43.3-94.54C423.94 60 404.26 48 382.47 48ZM32 464h448M136 288h80a24 24 0 0 1 24 24v88h0h-128h0v-88a24 24 0 0 1 24-24Zm152 176V312a24 24 0 0 1 24-24h64a24 24 0 0 1 24 24v152"/></svg>
                      ''',
                      width: 70,
                    ), 
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'For HNB Card',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: HexColor("#19647E"),
                              ),
                            ),
                            SizedBox(width:19),
                            Text(
                          '20%',
                          style: TextStyle(
                            fontSize: 40,
                            color: HexColor("#A72973"),
                          ),
                        ),
                          ],
                        ),
                      
                        Row(
                          children: [
                            Text(
                              'Till end Of',
                              style: TextStyle(
                                fontSize: 16,
                                color: HexColor("#19647E"),
                              ),
                            ),SizedBox(width: 5,),
                            Text(
                              'May',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: HexColor("#8F2B2B"),
                              ),
                            ),
                            SizedBox(width: 45),
                            Text(
                              'Off',
                              style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.bold,
                                color: HexColor("#A72973"),
                              ),
                            ),
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