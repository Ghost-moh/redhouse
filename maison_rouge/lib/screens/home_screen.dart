import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maison_rouge/screens/hotel_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final _pageController = PageController();
  var _onitemtapped;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: [
            HotelScreen(),
            // TODO: mettre le nom des screens à la place des containers
            Container(),
            Container(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Hôtel'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.compass), label: 'Tourisme'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favoris')
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            _pageController.jumpToPage(index);
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
