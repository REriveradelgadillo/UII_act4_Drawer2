import 'package:flutter/material.dart';

import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Fila center',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.home)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Fila start',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Fila end',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          _buildDrawerItem(
              icon: Icons.abc_sharp,
              text: 'Fila around',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.around)}),
          _buildDrawerItem(
              icon: Icons.access_time,
              text: 'Fila between',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.between)}),
          _buildDrawerItem(
              icon: Icons.ac_unit,
              text: 'Fila stretch',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.stretch)}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Fila evenly',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.contacts)}),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Compilación Movil\n Roberto Rivera",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
