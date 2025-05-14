import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer + BottomNav + Data Transfer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  String _userName = 'Default User';

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _receiveDataFromHome(String name) {
    setState(() {
      _userName = name;
      _selectedIndex = 2; // pindah ke halaman Profil
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      Home(onSendData: _receiveDataFromHome),
      const Product(),
      Profil(userName: _userName),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer + Bottom Navigation'),
      ),
      drawer: buildDrawer(context, _onTabSelected),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart), label: 'Product'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        onTap: _onTabSelected,
      ),
    );
  }
}

Widget buildDrawer(BuildContext context, Function(int) onTabSelect) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage('data:image/jpeg;base64,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'),
          ),
          accountEmail: Text('risethunder7@gmail.com'),
          accountName: Text('Sandy Mulia Kesuma', style: TextStyle(fontSize: 24.0)),
          decoration: BoxDecoration(color: Colors.black87),
        ),
        ListTile(
          title: const Text('Home'),
          leading: const Icon(Icons.home),
          onTap: () {
            Navigator.pop(context);
            onTabSelect(0);
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Product'),
          leading: const Icon(Icons.add_shopping_cart),
          onTap: () {
            Navigator.pop(context);
            onTabSelect(1);
          },
        ),
        const Divider(),
        ListTile(
          title: const Text('Profile'),
          leading: const Icon(Icons.person),
          onTap: () {
            Navigator.pop(context);
            onTabSelect(2);
          },
        ),
      ],
    ),
  );
}

class Home extends StatelessWidget {
  final Function(String) onSendData;

  const Home({Key? key, required this.onSendData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Kirim Nama ke Profil'),
        onPressed: () {
          onSendData("Sandy Mulia Kesuma");
        },
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Halaman Product'),
    );
  }
}

class Profil extends StatelessWidget {
  final String userName;

  const Profil({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Halo, $userName!'),
    );
  }
}
