import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Utkarsh Chaurasia"),
            accountEmail: Text("utkarsh103b@gmail.com"),
            decoration: BoxDecoration(
                color: Colors.orange[300],
                borderRadius: BorderRadius.circular(15)),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://avatars2.githubusercontent.com/u/47274683?s=460&u=d0f1b40291f480413ce4ac9a96b6d4603289844e&v=4"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          )
        ],
      ),
    );
  }
}
