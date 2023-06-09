import 'package:feshexpress/pages/preview.dart';
import 'package:feshexpress/pages/thankyou.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/custom_navigation_bar1.dart';
import 'cart_page.dart';
import 'chat_page.dart';
import 'favorite_page.dart';
import 'home_page.dart';


class Payment extends StatefulWidget {
  const Payment({ Key? key }) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int _selectedIndex=0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
     Color topic = Theme.of(context).brightness == Brightness.dark ? HexColor("#0EC42B") : HexColor("#4D4B4B");
         Color navbar = Theme.of(context).brightness == Brightness.dark ? HexColor("#333333") : Colors.white;
                      Color subtext= Theme.of(context).brightness == Brightness.dark ? HexColor("#FFFFFF") : HexColor("#848484");
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45.0, right: 40.0, top: 74.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Preview();
                        },
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: topic,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Text(
                      'Payment',
                      style: TextStyle(
                        fontSize:24.0,
                        fontWeight: FontWeight.bold,
                        color:  topic,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 67.0),
            Padding(
                    padding: const EdgeInsets.only(left:30.0,right: 40.0),
                    child: Text(
                      'We Accept',
                      style: TextStyle(
                        fontSize:30.0,
                        fontWeight: FontWeight.bold,
                        color:  topic,
                      ),
                    ),
            ),
            SizedBox(height:50.0),
            Padding(
              padding: const EdgeInsets.only(left:50.0),
              child: Center(
                child: Row(
                    children: [
                      SvgPicture.string(
                        '''
                        <svg xmlns="http://www.w3.org/2000/svg" width="256" height="83" viewBox="0 0 256 83"><defs><linearGradient id="logosVisa0" x1="45.974%" x2="54.877%" y1="-2.006%" y2="100%"><stop offset="0%" stop-color="#222357"/><stop offset="100%" stop-color="#254AA5"/></linearGradient></defs><path fill="url(#logosVisa0)" d="M132.397 56.24c-.146-11.516 10.263-17.942 18.104-21.763c8.056-3.92 10.762-6.434 10.73-9.94c-.06-5.365-6.426-7.733-12.383-7.825c-10.393-.161-16.436 2.806-21.24 5.05l-3.744-17.519c4.82-2.221 13.745-4.158 23-4.243c21.725 0 35.938 10.724 36.015 27.351c.085 21.102-29.188 22.27-28.988 31.702c.069 2.86 2.798 5.912 8.778 6.688c2.96.392 11.131.692 20.395-3.574l3.636 16.95c-4.982 1.814-11.385 3.551-19.357 3.551c-20.448 0-34.83-10.87-34.946-26.428m89.241 24.968c-3.967 0-7.31-2.314-8.802-5.865L181.803 1.245h21.709l4.32 11.939h26.528l2.506-11.939H256l-16.697 79.963h-17.665m3.037-21.601l6.265-30.027h-17.158l10.893 30.027m-118.599 21.6L88.964 1.246h20.687l17.104 79.963h-20.679m-30.603 0L53.941 26.782l-8.71 46.277c-1.022 5.166-5.058 8.149-9.54 8.149H.493L0 78.886c7.226-1.568 15.436-4.097 20.41-6.803c3.044-1.653 3.912-3.098 4.912-7.026L41.819 1.245H63.68l33.516 79.963H75.473" transform="matrix(1 0 0 -1 0 82.668)"/></svg>
                        ''',
                        width: 90,
                      ),
                      SizedBox(width: 20.0),
                      SvgPicture.string(
                        '''
                        <svg xmlns="http://www.w3.org/2000/svg" width="256" height="199" viewBox="0 0 256 199"><path d="M46.54 198.011V184.84c0-5.05-3.074-8.342-8.343-8.342c-2.634 0-5.488.878-7.464 3.732c-1.536-2.415-3.731-3.732-7.024-3.732c-2.196 0-4.39.658-6.147 3.073v-2.634h-4.61v21.074h4.61v-11.635c0-3.731 1.976-5.488 5.05-5.488c3.072 0 4.61 1.976 4.61 5.488v11.635h4.61v-11.635c0-3.731 2.194-5.488 5.048-5.488c3.074 0 4.61 1.976 4.61 5.488v11.635h5.05Zm68.271-21.074h-7.463v-6.366h-4.61v6.366h-4.171v4.17h4.17v9.66c0 4.83 1.976 7.683 7.245 7.683c1.976 0 4.17-.658 5.708-1.536l-1.318-3.952c-1.317.878-2.853 1.098-3.951 1.098c-2.195 0-3.073-1.317-3.073-3.513v-9.44h7.463v-4.17Zm39.076-.44c-2.634 0-4.39 1.318-5.488 3.074v-2.634h-4.61v21.074h4.61v-11.854c0-3.512 1.536-5.488 4.39-5.488c.878 0 1.976.22 2.854.439l1.317-4.39c-.878-.22-2.195-.22-3.073-.22Zm-59.052 2.196c-2.196-1.537-5.269-2.195-8.562-2.195c-5.268 0-8.78 2.634-8.78 6.805c0 3.513 2.634 5.488 7.244 6.147l2.195.22c2.415.438 3.732 1.097 3.732 2.195c0 1.536-1.756 2.634-4.83 2.634c-3.073 0-5.488-1.098-7.025-2.195l-2.195 3.512c2.415 1.756 5.708 2.634 9 2.634c6.147 0 9.66-2.853 9.66-6.805c0-3.732-2.854-5.708-7.245-6.366l-2.195-.22c-1.976-.22-3.512-.658-3.512-1.975c0-1.537 1.536-2.415 3.951-2.415c2.635 0 5.269 1.097 6.586 1.756l1.976-3.732Zm122.495-2.195c-2.635 0-4.391 1.317-5.489 3.073v-2.634h-4.61v21.074h4.61v-11.854c0-3.512 1.537-5.488 4.39-5.488c.879 0 1.977.22 2.855.439l1.317-4.39c-.878-.22-2.195-.22-3.073-.22Zm-58.833 10.976c0 6.366 4.39 10.976 11.196 10.976c3.073 0 5.268-.658 7.463-2.414l-2.195-3.732c-1.756 1.317-3.512 1.975-5.488 1.975c-3.732 0-6.366-2.634-6.366-6.805c0-3.951 2.634-6.586 6.366-6.805c1.976 0 3.732.658 5.488 1.976l2.195-3.732c-2.195-1.757-4.39-2.415-7.463-2.415c-6.806 0-11.196 4.61-11.196 10.976Zm42.588 0v-10.537h-4.61v2.634c-1.537-1.975-3.732-3.073-6.586-3.073c-5.927 0-10.537 4.61-10.537 10.976c0 6.366 4.61 10.976 10.537 10.976c3.073 0 5.269-1.097 6.586-3.073v2.634h4.61v-10.537Zm-16.904 0c0-3.732 2.415-6.805 6.366-6.805c3.732 0 6.367 2.854 6.367 6.805c0 3.732-2.635 6.805-6.367 6.805c-3.951-.22-6.366-3.073-6.366-6.805Zm-55.1-10.976c-6.147 0-10.538 4.39-10.538 10.976c0 6.586 4.39 10.976 10.757 10.976c3.073 0 6.147-.878 8.562-2.853l-2.196-3.293c-1.756 1.317-3.951 2.195-6.146 2.195c-2.854 0-5.708-1.317-6.367-5.05h15.587v-1.755c.22-6.806-3.732-11.196-9.66-11.196Zm0 3.951c2.853 0 4.83 1.757 5.268 5.05h-10.976c.439-2.854 2.415-5.05 5.708-5.05Zm114.372 7.025v-18.879h-4.61v10.976c-1.537-1.975-3.732-3.073-6.586-3.073c-5.927 0-10.537 4.61-10.537 10.976c0 6.366 4.61 10.976 10.537 10.976c3.074 0 5.269-1.097 6.586-3.073v2.634h4.61v-10.537Zm-16.903 0c0-3.732 2.414-6.805 6.366-6.805c3.732 0 6.366 2.854 6.366 6.805c0 3.732-2.634 6.805-6.366 6.805c-3.952-.22-6.366-3.073-6.366-6.805Zm-154.107 0v-10.537h-4.61v2.634c-1.537-1.975-3.732-3.073-6.586-3.073c-5.927 0-10.537 4.61-10.537 10.976c0 6.366 4.61 10.976 10.537 10.976c3.074 0 5.269-1.097 6.586-3.073v2.634h4.61v-10.537Zm-17.123 0c0-3.732 2.415-6.805 6.366-6.805c3.732 0 6.367 2.854 6.367 6.805c0 3.732-2.635 6.805-6.367 6.805c-3.951-.22-6.366-3.073-6.366-6.805Z"/><path fill="#FF5F00" d="M93.298 16.903h69.15v124.251h-69.15z"/><path fill="#EB001B" d="M97.689 79.029c0-25.245 11.854-47.637 30.074-62.126C114.373 6.366 97.47 0 79.03 0C35.343 0 0 35.343 0 79.029c0 43.685 35.343 79.029 79.029 79.029c18.44 0 35.343-6.366 48.734-16.904c-18.22-14.269-30.074-36.88-30.074-62.125Z"/><path fill="#F79E1B" d="M255.746 79.029c0 43.685-35.343 79.029-79.029 79.029c-18.44 0-35.343-6.366-48.734-16.904c18.44-14.488 30.075-36.88 30.075-62.125c0-25.245-11.855-47.637-30.075-62.126C141.373 6.366 158.277 0 176.717 0c43.686 0 79.03 35.563 79.03 79.029Z"/></svg>
                        ''',
                        width: 90,
                      ),
                      SizedBox(width: 20.0),
                      SvgPicture.string(
                      '''
                      <svg xmlns="http://www.w3.org/2000/svg" width="36" height="24" viewBox="0 0 36 24"><path fill="#22005d" d="M33.6 24H2.4A2.4 2.4 0 0 1 0 21.6V11.504h1.729l.39-.944h.873l.389.94h3.402v-.715l.304.72h1.766l.304-.732v.73h8.453V9.959h.16c.114.004.147.014.147.204v1.342h4.373v-.359c.447.227.974.36 1.533.36l.095-.001h-.005h1.84l.394-.94h.873l.385.94h3.546v-.894l.536.894h2.836V5.601h-2.807v.697l-.393-.697h-2.886v.697l-.361-.697h-3.897a3.47 3.47 0 0 0-1.709.353l.021-.009v-.344h-2.688v.344a1.627 1.627 0 0 0-1.149-.343h.006h-9.823l-.659 1.525l-.677-1.525H4.207v.697l-.341-.697h-2.64l-1.223 2.8v-6a2.4 2.4 0 0 1 2.4-2.4h31.2a2.4 2.4 0 0 1 2.4 2.4v10.48H34.13c-.03-.002-.066-.002-.101-.002c-.434 0-.837.13-1.173.353l.008-.005v-.346h-2.77a1.923 1.923 0 0 0-1.215.349l.006-.004v-.346h-4.946v.346a2.683 2.683 0 0 0-1.327-.346h-.039h.002h-3.263v.346a2.253 2.253 0 0 0-1.436-.345l.009-.001h-3.651l-.836.904l-.782-.904H7.162v5.908h5.352l.861-.918l.811.918h3.299v-1.383h.46a3.228 3.228 0 0 0 1.296-.217l-.022.008v1.594h2.72v-1.539h.131c.166 0 .183.006.183.174v1.366h8.266l.101.002c.474 0 .916-.142 1.284-.385l-.009.005v.378h2.622l.125.002c.491 0 .958-.101 1.382-.284l-.023.009v3.082a2.4 2.4 0 0 1-2.4 2.4zm-12.495-6.039h-1.018v-4.235h2.336a2.45 2.45 0 0 1 1.233.206l-.016-.006c.313.172.522.5.522.876l-.002.067v-.003l.001.038c0 .486-.293.904-.713 1.086l-.008.003c.201.072.369.195.494.354l.002.002a1.226 1.226 0 0 1 .168.779l.001-.006v.838h-1.016v-.53a1.212 1.212 0 0 0-.163-.834l.003.005a.98.98 0 0 0-.748-.187l.006-.001h-1.082v1.547zm0-3.36v.951h1.23a.97.97 0 0 0 .506-.09l-.006.003a.459.459 0 0 0 .21-.385l-.001-.023v.001a.405.405 0 0 0-.207-.38l-.002-.001a.966.966 0 0 0-.484-.08h.004zM12.08 17.96H8.073v-4.234h4.07l1.245 1.388l1.287-1.388h3.233c1.148 0 1.706.457 1.706 1.395c0 .955-.577 1.419-1.76 1.419h-1.265v1.419h-1.967l-1.246-1.399l-1.295 1.4zm3.501-3.78l-1.554 1.67l1.554 1.724zm-6.499 2.055v.842h2.488l1.15-1.242l-1.106-1.234H9.081v.77h2.222v.863zm7.507-1.633v1.078h1.307c.4 0 .63-.204.63-.56c0-.34-.214-.519-.619-.519zm18.038 3.36h-1.954v-.91h1.946a.559.559 0 0 0 .411-.106l-.001.001a.372.372 0 0 0 .119-.273v-.016a.348.348 0 0 0-.123-.266a.513.513 0 0 0-.358-.094h.002l-.187-.006c-.914-.024-1.949-.052-1.949-1.305c0-.61.382-1.261 1.451-1.261h2.017v.902h-1.845a.693.693 0 0 0-.412.082l.004-.002a.329.329 0 0 0-.147.302v-.001v.011a.32.32 0 0 0 .22.304l.002.001a1.12 1.12 0 0 0 .392.048h-.003l.549.014a1.583 1.583 0 0 1 1.151.343l-.003-.002c.03.024.056.05.079.079l.001.001l.012 1.612a1.577 1.577 0 0 1-1.381.541zm-3.949 0h-1.972v-.91h1.962a.577.577 0 0 0 .415-.106l-.002.001a.373.373 0 0 0 .118-.273v-.01a.363.363 0 0 0-.123-.272a.526.526 0 0 0-.363-.094h.002l-.186-.006c-.911-.024-1.945-.052-1.945-1.305c0-.61.38-1.261 1.447-1.261h2.028v.902h-1.856a.686.686 0 0 0-.409.082l.004-.002a.354.354 0 0 0 .066.619l.002.001a1.134 1.134 0 0 0 .397.048h-.003l.545.014a1.609 1.609 0 0 1 1.158.344l-.003-.003a1.183 1.183 0 0 1 .302.901v-.005c.003.883-.532 1.333-1.587 1.333zm-2.578 0h-3.38v-4.237h3.377v.875H25.73v.77h2.312v.863H25.73v.842l2.37.004v.88zm1.97-7.286h-2.061l-.394-.944h-2.102l-.382.944h-1.184a2.18 2.18 0 0 1-1.472-.471l.005.003a2.122 2.122 0 0 1-.54-1.625l-.001.008a2.213 2.213 0 0 1 .548-1.657l-.002.002a2.033 2.033 0 0 1 1.545-.492l-.008-.001h.98v.903h-.96a.963.963 0 0 0-.78.251l.001-.001a1.393 1.393 0 0 0-.291.964v-.005a1.457 1.457 0 0 0 .281.998l-.003-.004a.983.983 0 0 0 .709.218h-.004h.454l1.431-3.33h1.52l1.713 4v-4h1.541l1.778 2.948V6.437h1.04v4.232h-1.444l-1.92-3.178v3.178zm-3.499-3.518l-.697 1.688h1.397zm-9.799 3.516H15.76V6.44h2.328a2.357 2.357 0 0 1 1.241.209l-.015-.006a.996.996 0 0 1 .514.871l-.002.07v-.003v.031a1.2 1.2 0 0 1-.706 1.094l-.008.003c.201.076.37.198.499.354l.002.002a1.213 1.213 0 0 1 .167.783l.001-.006v.831H18.76l-.004-.534v-.08a1.11 1.11 0 0 0-.163-.749l.003.005a.995.995 0 0 0-.744-.181l.006-.001h-1.085v1.54zm0-3.353v.94H18a.914.914 0 0 0 .505-.09l-.005.002a.437.437 0 0 0 .21-.373l-.001-.028v.001a.39.39 0 0 0-.211-.373l-.002-.001a1.025 1.025 0 0 0-.483-.08h.003zM6.056 10.674H4l-.389-.944H1.503l-.392.944h-1.1L1.824 6.44h1.503l1.721 4.007V6.44h1.651l1.324 2.871L9.24 6.44h1.685v4.232h-1.04L9.883 7.36l-1.467 3.313h-.888L6.057 7.355v3.318zM2.552 7.158l-.689 1.688h1.382zm18.888 3.515h-1.032V6.44h1.033v4.232zm-6.386 0H11.68V6.44h3.38v.88h-2.368v.763h2.311v.869H12.69v.846h2.368v.874z"/></svg>

                      ''',
                      width: 90,
                      ),
                    ],
                ),
              ),
            ),
            SizedBox(height:39.0),
            Container(
              width: 275.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: navbar,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: HexColor("#848484")),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                  hintText: 'Name On Card',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: subtext,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              width: 275.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: navbar,
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: HexColor("#848484")),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                  hintText: 'Card Number',
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: subtext,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left:68.0),
              child: Row(
                children: [
                  Container(
                    width: 100.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: navbar,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: HexColor("#848484")),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                        hintText: 'Expiry',
                        hintStyle: TextStyle(
                        fontSize: 15.0,
                          color: subtext,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 75.0),
                  Container(
                    width: 100.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: navbar,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(color: HexColor("#848484")),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10.0, top: -6.0),
                        hintText: 'CVV',
                        hintStyle: TextStyle(
                        fontSize: 15.0,
                          color: subtext,
                        ),
                      ),
                    ),
                  ),
                ],
            
              ),
            ),
            SizedBox(height:100.0),
            const SizedBox(height: 20.0),
            GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context){
                  return const  thankyouPage();
                },
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom:25.0),
              child: Container(
                  width: 275.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: HexColor("#0EC42B"),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    children: [
                      Text(
                        "Place order",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Roboto',
                          color: HexColor("#FFFFFF"),
                        ),
                      ),
                    SizedBox(width:120.0), // Add a space of 5.0 between the text and the icon
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: HexColor("#FFFFFF"),
                      size:25.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ],
        ),
      ),
     bottomNavigationBar: Container(
        color:navbar,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
          child: GNav(
            // selectedIndex: _selectedIndex,
            iconSize: 30.0,
            gap: 8.0,
            textSize: 18.0,
            // backgroundColor: Colors.white,
            // tabBackgroundColor: _bgColors[_selectedIndex],
            // activeColor: Colors.white,
            padding: EdgeInsets.all(16.0),
            tabs: [
              GButton(
                icon: Icons.home_outlined,
               
                iconColor: HexColor("#15CE1F"),
                iconActiveColor: HexColor("#15CE1F"),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
              GButton(
                icon: Icons.shopping_cart_outlined,
               
                iconColor: HexColor("#13B662"),
                 iconActiveColor: HexColor("#13B662"),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cartPage()),
                  );
                },
              ),
              GButton(
                icon: Icons.chat_bubble_outline_rounded,
                
                iconColor: HexColor("#119DA4"),
                iconActiveColor: HexColor("#119DA4"),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => chatPage()),
                  );
                },
              ),
              GButton(
                icon: Icons.favorite_outline,
                
                iconColor: HexColor("#19647E"),
                iconActiveColor: HexColor("#19647E"),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => favPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),

      
    );
  }
}