import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.transparent,
  title: Center(
    child: Text(
      "Dashboard          ",
      style: GoogleFonts.openSans(),
    ),
  ),
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var drawerTextColor = TextStyle(
  color: Colors.white,
);
var myDrawer = Drawer(
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  backgroundColor: Color(0xff9FC088),
  elevation: 0,
  child: Column(
    children: [
      DrawerHeader(
          padding: EdgeInsets.all(20),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/mahan.png'),

                  )),
            ),
          )),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.home),
          title: Text(
            'D A S H B O A R D',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.settings),
          title: Text(
            'S E T T I N G S',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.nightlight_round_outlined),
          trailing: Switch(value: false, onChanged: (value) => true,),
          title: Text(
            'N i g h t  m o d e',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.info),
          title: Text(
            'A B O U T',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.logout),
          title: Text(
            'L O G O U T',
            style: drawerTextColor,
          ),
        ),
      ),
    ],
  ),
);
