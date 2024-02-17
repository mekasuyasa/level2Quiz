import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_flutter_level_2/Halaman%20Awal/carousel.dart';

class HalamanAwal extends StatelessWidget {
  const HalamanAwal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff233975),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Image.asset("assets/images/Logo HSI.png")),
            ),
            Text(
              "EDU HSI",
              style: GoogleFonts.plusJakartaSans(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Text("v.2401-2001",
                style: GoogleFonts.plusJakartaSans(
                    textStyle: TextStyle(color: Colors.white))),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                alignment: Alignment.topLeft,
                height: 90,
                //decoration: BoxDecoration(color: Colors.amber),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Assalamualaikum,",
                      style: GoogleFonts.plusJakartaSans(
                          textStyle: const TextStyle(color: Color(0xff8B8B8B))),
                    ),
                    Text("M. Eka Suyasa",
                        style: GoogleFonts.plusJakartaSans(
                          textStyle: const TextStyle(
                              fontFamily: 'PlusJakartaSans',
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                    Text("ARN161-3539",
                        style: GoogleFonts.plusJakartaSans(
                          textStyle: const TextStyle(
                              color: Color(0xff8B8B8B), fontSize: 18),
                        )),
                  ],
                )),
          ),
          SizedBox(
            height: 250,
            child: Carousel(),
          ),
          Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Evaluasi",
                style: GoogleFonts.plusJakartaSans(
                  textStyle: const TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )),
          const LembarEvaluasi(
            judul: "Program Reguler",
            status: true,
            materi: "USSUN3.EA1",
            keterangan:
                "Silisilah Ilmiah Pembahasan Kitab Ushulus Sunnah Bagian Ketiga",
            soal: "30 soal",
            tanggal: "Senin, 12 Feb 2024·23.00",
          ),
          const LembarEvaluasi(
            judul: "Majalah HSI",
            status: false,
            materi: "Kuis Majalah HSI Edidi 58",
            keterangan: "Majalah 1444H",
            soal: "10 soal",
            tanggal: "Rabu,21 Feb 2024·12.00",
          ),
          const LembarEvaluasi(
            judul: "Kuisioner",
            status: true,
            materi: "Quis Program Pelatihan Flutter",
            keterangan: "Quis Pelatihan Flutter Level 2",
            soal: "2 soal",
            tanggal: "Rabu, 14 Feb 2024·12.00",
          )
        ],
      ),
    );
  }
}

class LembarEvaluasi extends StatelessWidget {
  const LembarEvaluasi({
    Key? key,
    required this.status,
    required this.judul,
    required this.materi,
    required this.keterangan,
    required this.soal,
    required this.tanggal,
  }) : super(key: key);
  final String judul;
  final bool status;
  final String materi;
  final String keterangan;
  final String soal;
  final String tanggal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: const Color.fromARGB(255, 211, 219, 228)),
            borderRadius: BorderRadius.circular(10)),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffE9F0F8),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child:
                            Text(judul, style: GoogleFonts.plusJakartaSans())),
                  ),
                  status == true
                      ? Text("Selesai",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                                color: Color(0xff4561F0),
                                fontWeight: FontWeight.bold),
                          ))
                      : Text(
                          "Aktif",
                          textAlign: TextAlign.right,
                          style: GoogleFonts.plusJakartaSans(
                            textStyle: const TextStyle(
                                color: Color(0xff2DBE78),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(materi,
                    style: GoogleFonts.plusJakartaSans(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                Text(
                  keterangan,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.plusJakartaSans(),
                )
              ]),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffE9F0F8),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 2, bottom: 2),
                        child: Row(
                          children: [
                            const ImageIcon(
                              AssetImage("assets/icon/menu.png"),
                              color: Color(0xff233975),
                              size: 15,
                            ),
                            const SizedBox(width: 7),
                            Text(soal),
                          ],
                        ),
                      )),
                  Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: const Color(0xffE9F0F8),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 2, bottom: 2),
                        child: Row(
                          children: [
                            const ImageIcon(
                              AssetImage("assets/icon/timer.png"),
                              color: Color(0xff233975),
                              size: 15,
                            ),
                            const SizedBox(width: 7),
                            Text(
                              tanggal,
                              style: GoogleFonts.plusJakartaSans(),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 10),
              status == true
                  ? Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(378, 50),
                              primary: Colors.white,
                              onPrimary: const Color(0xff233975),
                              side: const BorderSide(
                                  color: Color(0xff233975), width: 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const ImageIcon(
                                AssetImage("assets/icon/play.png"),
                                color: Color(0xff233975),
                                size: 15,
                              ),
                              const SizedBox(width: 7),
                              Text(
                                "Dengarkan Audio",
                                style: GoogleFonts.plusJakartaSans(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(165, 50),
                                  primary: const Color(0xff4561F0),
                                  onPrimary: Colors.white,
                                  side: const BorderSide(
                                      color: Color(0xff233975), width: 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              child: Text(
                                "Lembar Evaluasi",
                                style: GoogleFonts.plusJakartaSans(),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(165, 50),
                                  primary: Colors.white,
                                  onPrimary: const Color(0xff233975),
                                  side: const BorderSide(
                                      color: Color(0xff233975), width: 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              child: Text(
                                "Bukti Jawaban",
                                style: GoogleFonts.plusJakartaSans(),
                              ),
                            ),
                            const SizedBox(height: 20),
                          ],
                        )
                      ],
                    )
                  : Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(378, 50),
                              primary: Colors.white,
                              onPrimary: const Color(0xff233975),
                              side: const BorderSide(
                                  color: Color(0xff233975), width: 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const ImageIcon(
                                AssetImage("assets/icon/play.png"),
                                color: Color(0xff233975),
                                size: 15,
                              ),
                              const SizedBox(width: 7),
                              Text(
                                "Dengarkan Audio",
                                style: GoogleFonts.plusJakartaSans(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(378, 50),
                              primary: const Color(0xff2DBE78),
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: Text(
                            "Kerjakan",
                            style: GoogleFonts.plusJakartaSans(),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
