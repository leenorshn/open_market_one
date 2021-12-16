import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_market_one/pages/category.dart';
import 'package:open_market_one/pages/products_page.dart';
import 'package:open_market_one/screen/payment_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _controller;
  int page = 0;
  @override
  void initState() {
    _controller = PageController(initialPage: page);
    super.initState();
  }

  onPageChanged(int p) {
    setState(() {
      page = p;
    });
  }

  onNavTapped(int p) {
    _controller.animateToPage(
      p,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Open market"),
      ),
      body: PageView(
        onPageChanged: onPageChanged,
        controller: _controller,
        children: [
          const ProductsPage(),
          const Category(),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const PaymentScreen(),
            ),
          );
        },
        child: const Icon(CupertinoIcons.bitcoin),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        onTap: onNavTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.app_badge),
            label: "Accueil",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.tag),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "Account",
          ),
        ],
        showUnselectedLabels: true,
      ),
    );
  }
}
