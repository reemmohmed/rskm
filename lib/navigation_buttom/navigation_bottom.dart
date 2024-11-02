import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:rskm/navigation_buttom/cart_page.dart';
import 'package:rskm/navigation_buttom/favorites_page.dart';
import 'package:rskm/navigation_buttom/profile_page.dart';
import 'package:rskm/pages/home_page.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({super.key});

  @override
  State<NavigationBottom> createState() => _NavigationBottomState();
}

class _NavigationBottomState extends State<NavigationBottom> {
  int pageIndex = 0;

  List<Widget> pages = [
    const HomePage(),
    const CartPage(),
    const FavoritesPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          Icons.home,
          Icons.shopping_cart,
          Icons.favorite,
          Icons.person,
        ],
        activeColor: const Color(0xffEF6969),
        activeIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        elevation: 0,
      ),
    );
  }
}
