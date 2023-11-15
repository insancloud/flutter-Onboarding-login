import 'package:flutter/material.dart';

import '../utils/colors.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text("Onboarding"),
          ),
      body: Column(
        children: [
          Image.asset("assets/images/onboarding3.png"),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Monitor Kualitas Udara \n Real-Time",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: "InterBold",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Pantau tingkat polusi udara, konsentrasi partikel berbahaya, dan indeks kualitas udara dengan akurat",
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
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () {
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
                child: const Text(
                  "Lanjutkan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "InterSemiBold",
                      fontSize: 14,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
               onTap: () {
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
                child:  Text(
                  "Lewati",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "InterSemiBold",
                      fontSize: 14,
                      color: greenColor ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
