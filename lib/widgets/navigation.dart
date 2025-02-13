import 'package:flutter/material.dart';
import 'package:konekto/views/home.dart/home.dart';
import 'package:konekto/views/pages/discount.dart';
import 'package:konekto/views/pages/news.dart';
import 'package:konekto/views/pages/profile.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  //definisi halaman
  final List<Widget> page = [
    const Home(),
    const Discount(),
    const News(),
    const Profile(),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor: const Color.fromARGB(255, 12, 53, 71),
// Warna item yang dipilih
          unselectedItemColor: Colors.grey, // Warna item yang tidak dipilih
          backgroundColor: Colors.white, // Warna latar belakang navbar
          type: BottomNavigationBarType
              .fixed, // Untuk memastikan warna tetap stabil
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.discount_rounded), label: 'Dicsount'),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper_rounded), label: 'News'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Profile'),
          ]),
    );
  }
}
