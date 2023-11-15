import 'package:flutter/material.dart';
import 'package:onboard_login/utils/colors.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 70, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: 44,
                    height: 44,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Selamat Datang",
                      style:
                          TextStyle(fontFamily: "InterSemiBold", fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      "Masukkan email dan password untuk melanjutkan.",
                      style: TextStyle(
                          fontFamily: "InterRegular",
                          fontSize: 14,
                          color: fontGrey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
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
                          color: greenColor.withOpacity(0.28),
                        ),
                        child: const Text(
                          "Masuk",
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
                    padding: const EdgeInsets.symmetric(vertical: 32),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          color: dividerColor,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Atau",
                            style: TextStyle(
                              color: dividerColor,
                              fontFamily: "InterMedium",
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          color: dividerColor,
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
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
                          color: googlebtnColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/google.png",
                              width: 21,
                              height: 21,
                            ),
                            Text(
                              "Masuk Dengan Google",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "InterSemiBold",
                                fontSize: 14,
                                color: warnaitamGoogle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Belum punya akun?",
                  style: TextStyle(fontFamily: "InterRegular"),
                ),
                Text(
                  " Daftar Sekarang",
                  style:
                      TextStyle(fontFamily: "InterSemiBold", color: greenColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
