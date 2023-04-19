import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(49, 92, 43, 1),
          title: const Text(
            'User Settings',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: const Color.fromARGB(255, 214, 228, 222),
            padding: const EdgeInsets.only(left: 00, top: 25),
            child: Column(
              children: const [
                SizedBox(
                  height: 15,
                ),
                Text("Your Account"),
                ListTile(
                  title: Text('Account Center',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Notifications',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Favorites',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Muted',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Your Account",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                ListTile(
                  title: Text('Account Privacy',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Orders and Payments',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("FAQ"),
                ListTile(
                  title: Text('Help Center',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('About',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Login"),
                ListTile(
                  title: Text('Logout',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text('Add Account',
                      style: TextStyle(fontSize: 16, color: Colors.black)),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
