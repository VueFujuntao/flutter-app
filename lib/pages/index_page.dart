import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_page.dart';
import 'search_page.dart';
import 'category_page.dart';
import 'member_page.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  static final List<Widget>_widgetOptions = <Widget>[
    const HomePage(),
    const SearchPage(),
    const CateGoryPage(),
    const MemberPage(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext content) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label:'首页'
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label:'购物车'
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label:'个人中心'
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label:'个人中心'
          )
        ],
        onTap: (index) => {
          setState(() {
            _selectedIndex = index;
          })
        },
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }
}
