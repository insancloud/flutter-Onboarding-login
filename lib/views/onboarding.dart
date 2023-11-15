import 'package:flutter/material.dart';
import 'package:onboard_login/views/welcome.dart';

import '../utils/colors.dart';

List onboardingData = [
  {
    "image": "assets/images/onboarding1.png",
    "title": "Monitor Kualitas Udara \n Real-Time",
    "desc":
        "Pantau tingkat polusi udara, konsentrasi partikel berbahaya, dan indeks kualitas udara dengan akurat",
  },
  {
    "image": "assets/images/onboarding2.png",
    "title": "Mode Tampilan Peta \n Secara Interaktif",
    "desc":
        "Identifikasi area dengan udara bersih dan area yang memerlukan perhatian ekstra untuk menjaga kesehatan Anda.",
  },
  {
    "image": "assets/images/onboarding3.png",
    "title": "Histori dan Tren \n Kualitas Udara",
    "desc":
        "Lihat riwayat kualitas udara selama beberapa waktu terakhir. Amati tren dan pola perubahan kualitas udara.",
  }
];

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                print(value.toString());

                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onboardingData.length,
              itemBuilder: (_, i) {
                print(i);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(onboardingData[i]['image']),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              onboardingData[i]['title'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 24,
                                fontFamily: "InterBold",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              onboardingData[i]['desc'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "InterMedium",
                                color: fontGrey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Wrap(
                  spacing: 6,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                          color: currentPage == 0 ? greenColor : grayColor,
                          borderRadius: BorderRadius.circular(1000)),
                      height: 8,
                      width: currentPage == 0 ? 20 : 8,
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                          color: currentPage == 1 ? greenColor : grayColor,
                          borderRadius: BorderRadius.circular(1000)),
                      height: 8,
                      width: currentPage == 1 ? 20 : 8,
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                          color: currentPage == 2 ? greenColor : grayColor,
                          borderRadius: BorderRadius.circular(1000)),
                      height: 8,
                      width: currentPage == 2 ? 20 : 8,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GestureDetector(
                  onTap: () {
                    if (currentPage == 2) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const WelcomeView(),
                        ),
                      );
                    }
                    pageController.animateToPage(currentPage + 1,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut);

                    print("ini Lanjutkan");
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 13.5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: greenColor,
                    ),
                    child: Text(
                      currentPage == 2 ? "Miliki Sekarang" : "Lanjutkan",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: "InterSemiBold",
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              currentPage == 2
                  ? const SizedBox(
                      height: 47,
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GestureDetector(
                        onTap: () {
                          pageController.animateToPage(2,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeInOut);
                          print("ini Lewati");
                        },
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 13.5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.white,
                          ),
                          child: Text(
                            "Lewati",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: "InterSemiBold",
                                fontSize: 14,
                                color: greenColor),
                          ),
                        ),
                      ),
                    ),
            ],
          )
        ],
      ),
    );
  }
}
