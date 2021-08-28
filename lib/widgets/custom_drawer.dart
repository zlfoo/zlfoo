import 'package:ecommerce_api/components/applocal.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("zoulfeker"),
            accountEmail: Text("zoulfekeralhoseen@gmail.com"),
            currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage("images/drawer.jpg"), fit: BoxFit.cover)),
          ),
          DrawerItem(
            name: 'homepage',
            icon: Icons.home,
          ),
          buildDivider(),
          DrawerItem(
            name: 'sections',
            icon: Icons.category,
          ),
          buildDivider(),
          DrawerItem(
            name: "Abaut the app",
            icon: Icons.info,
          ),
          buildDivider(),
          DrawerItem(
            name: "Settings",
            icon: Icons.settings,
          ),
          buildDivider(),
          DrawerItem(
            name: "Log out",
            icon: Icons.exit_to_app,
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Divider buildDivider() {
    return const Divider(
      color: Colors.black54,
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key key, this.name, this.icon}) : super(key: key);
  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "${getLang(context, name)}",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
      leading: Icon(
        icon,
        color: Colors.blue[600],
        size: 25,
      ),
      onTap: () {},
    );
  }
}
