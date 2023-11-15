import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'login.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 69),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Nikmati Aktifitas Dengan\nUdara Terbaik",
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
                    "Buat akun atau masuk untuk mendapatkan informasi kualitas udara disekitarmu. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "InterMedium",
                      color: fontGrey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset("assets/images/welcome.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () {
                print("Buat Akun");
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
                  "Buat Akun",
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
                 Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginView(),
                        ),
                      );
                print("Masuk");
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
                  "Masuk",
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
      ),
    );
  }
}
