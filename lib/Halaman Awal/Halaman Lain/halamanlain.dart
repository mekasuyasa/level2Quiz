import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HalamanAkademi extends StatelessWidget {
  const HalamanAkademi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Akademi",
          style: GoogleFonts.plusJakartaSans(
              textStyle: const TextStyle(fontWeight: FontWeight.bold)),
        )),
        body: Container(
          alignment: Alignment.center,
          child: const Image(
            image: AssetImage("assets/images/Akademi.png"),
            alignment: Alignment.center,
          ),
        ));
  }
}

class HalamanReguler extends StatelessWidget {
  const HalamanReguler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff233975),
        title: Text(
          "Reguler",
          style: GoogleFonts.plusJakartaSans(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              "v.2401-2001",
              style:
                  TextStyle(fontFamily: 'PlusJakartaSans', color: Colors.white),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 40,
                        height: 40,
                        child: Image(
                            image: AssetImage("assets/images/Logo HSI.png"))),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "M. Eka Suyasa",
                          style: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "ARN161-3539",
                          style: TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              color: Color(0xff8B8B8B),
                              fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Program Reguler: 161",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      color: Colors.black45, fontSize: 16)),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Silsilah Ilmiah Pembahasan Kitab Ushulus Sunnah Bagian Ketiga",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15)),
                            )
                          ],
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(340, 40),
                                primary: Color(0xff4561F0),
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Text(
                              "Lihat",
                              style: GoogleFonts.plusJakartaSans(
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
