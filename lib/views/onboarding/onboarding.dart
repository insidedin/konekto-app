import 'package:flutter/material.dart';
import 'package:konekto/views/home.dart/home.dart';
import 'package:konekto/widgets/boardingView.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  //initializing page controller (for page view)
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  List<Widget> buildOnboardingPages() {
    return [
      boardingView(
        'assets/images/on-1.png',
        'Selamat Datang di Aplikasi Konektivitas Kito',
        'Nikmati Kemudahan Konektivitas Perjalanan dengan Berbagai Pilihan Hanya Dalam 1 Aplikasi!',
      ),
      boardingView(
        'assets/images/on-2.png',
        'Integrasi Transportasi',
        'Dengan Konekto, Anda dapat dengan mudah mengakses berbagai Moda Transportasi yang Terintegrasi dalam Waktu Singkat!',
      ),
      boardingView(
        'assets/images/on-3.png',
        'Destinasi Wisata',
        'Dengan Konekto, Anda dapat menjelajahi Tempat Wisata & Hiburan yang Menarik serta Berkemampuan Destinasi Sesuai dengan Minat Anda.',
      ),
    ];
  }

  void onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  void navigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x00C3E1F8),
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: onPageChanged,
            children: buildOnboardingPages(),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: currentPage == buildOnboardingPages().length - 1
                ? ElevatedButton(
                    onPressed: navigateToHome,
                    child: Text('Let\'s Started'),
                  )
                : TextButton(
                    onPressed: () {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text('Next'),
                  ),
          ),
        ],
      ),
    );
  }
}
