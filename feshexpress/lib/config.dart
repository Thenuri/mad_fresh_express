import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map> drawerItems = [
  {
    'icon': FontAwesomeIcons.circleUser,
    'title': 'Profile',
    'route': '/profile',
   
  },
  {
    'icon':FontAwesomeIcons.cartShopping,
    'title': 'Purchase History',
    'route': '/purchase-history',
   
  },
  {
    'icon':FontAwesomeIcons.addressBook,
    'title': 'Contact Us',
    'route': '/contact-us',
  },
  {
    'icon': FontAwesomeIcons.gear,
    'title': 'Settings',
    'route': '/settings',
  },
  {
    'icon': FontAwesomeIcons.handHoldingDollar,
    'title': 'Promotions',
    'route': '/promotions',
  },
];

