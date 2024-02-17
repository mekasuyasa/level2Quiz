import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HalamanProfil extends StatelessWidget {
  const HalamanProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Profil",
              style: GoogleFonts.plusJakartaSans(
                textStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text("v.2401-2001",
                    style: GoogleFonts.plusJakartaSans(
                      textStyle: TextStyle(color: Colors.grey),
                    )))
          ]),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                children: [
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                      child: Container(
                          width: 35,
                          height: 35,
                          child: Image.asset(
                            "assets/images/Logo HSI.png",
                            fit: BoxFit.fill,
                          ))),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("M. Eka Suyasa",
                              style: GoogleFonts.plusJakartaSans(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              )),
                          Text("ARN161-3539",
                              style: GoogleFonts.plusJakartaSans(
                                textStyle: TextStyle(
                                    color: Colors.black54, fontSize: 15),
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 90),
                  TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage("assets/icon/edit.png"),
                          color: Color(0xff233975),
                          size: 20,
                        ),
                        SizedBox(width: 7),
                        Text("Ubah",
                            style: GoogleFonts.plusJakartaSans(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xff233975)),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              height: 1,
              color: Colors.grey[300],
            ),
            const DataDiri(
                icondata: "assets/icon/whatsapp.png",
                data: "Nomor Whatsapp",
                isi: "62-81952942669"),
            const DataDiri(
                icondata: "assets/icon/alamat.png",
                data: "Alamat",
                isi:
                    "Perumahan Griya Alam Sentosa Blok i-12 No.5a. RT 04 RW 09,Kelurahan Pasirangin, Kecamatan Cileungsi"),
            const DataDiri(
                icondata: "assets/icon/kota.png",
                data: "Kabupaten/Kota, Provinsi, Kode Pos",
                isi: "KAB. BOGOR, JAWA BARAT, 16820"),
            const DataDiri(
                icondata: "assets/icon/nikah.png",
                data: "Status Pernikahan/ Jumlah Anak",
                isi: "Menikah / 6"),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(right: 0, left: 0),
              height: 2,
              color: Colors.grey[300],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/icon/admin.png"),
                    color: Color(0xff233975),
                    size: 25,
                  ),
                  Text("  List Admin",
                      style: GoogleFonts.plusJakartaSans(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ))
                ],
              ),
            ),
            const ListAdmin(
                namaadmin: "Kurnia Adhiwibowo",
                nomoradmin: "(ARN151-0358) ",
                keterangan: "PLACEMENT TEST SANDBOX 3",
                grup: "Grup: CALONPESERTAARN",
                program: "SANDBOX"),
            const ListAdmin(
                namaadmin: "Diah R.I.S",
                nomoradmin: "(ART171-15037)",
                keterangan: "PLACEMENT TEST SANDBOX 3",
                grup: "Grup: CALONPESERTAARN",
                program: "SANDBOX"),
            const ListAdmin(
                namaadmin: "SAPURI",
                nomoradmin: "(ARN152-0133) ",
                keterangan:
                    "Silsilah Ilmiah Pembahasan Kitab Ushulus Sunnah Bagian Ketiga",
                grup: "Grup: ARN161-01",
                program: "Program Reguler"),
            Container(
              margin: const EdgeInsets.only(right: 0, left: 0),
              height: 2,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/icon/info.png"),
                        color: Color(0xff233975),
                        size: 23,
                      ),
                      Text("  Info Lainnya",
                          style: GoogleFonts.plusJakartaSans(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            const InfoLainnya(
              icon: "assets/icon/password.png",
              keterangan: "Ganti Password",
            ),
            const InfoLainnya(
              icon: "assets/icon/bantuan.png",
              keterangan: "Bantuan",
            ),
            const InfoLainnya(
              icon: "assets/icon/privacy.png",
              keterangan: "Kebijakan Privasi",
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: Text("Keluar",
                  style: GoogleFonts.plusJakartaSans(
                      textStyle: TextStyle(fontWeight: FontWeight.w600))),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: const Size(378, 50),
                  primary: Colors.white,
                  onPrimary: Colors.red,
                  side: const BorderSide(color: Colors.red, width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            const SizedBox(height: 10)
          ],
        )
      ]),
    );
  }
}

class InfoLainnya extends StatelessWidget {
  const InfoLainnya({
    super.key,
    required this.icon,
    required this.keterangan,
  });
  final String icon;
  final String keterangan;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            fixedSize: Size(380, 30),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Row(
              children: [
                ImageIcon(AssetImage(icon), color: const Color(0xff233975)),
                const Text("  "),
                Text(keterangan,
                    style: GoogleFonts.plusJakartaSans(
                      textStyle: TextStyle(
                          color: Color(0xff233975),
                          fontWeight: FontWeight.w600),
                    ))
              ],
            )),
            Row(
              children: [
                Text(">",
                    textAlign: TextAlign.right,
                    style: GoogleFonts.plusJakartaSans(
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xff233975),
                          fontWeight: FontWeight.w600),
                    )),
              ],
            )
          ],
        ));
  }
}

class ListAdmin extends StatelessWidget {
  const ListAdmin({
    super.key,
    required this.namaadmin,
    required this.nomoradmin,
    required this.keterangan,
    required this.grup,
    required this.program,
  });
  final String namaadmin;
  final String nomoradmin;
  final String keterangan;
  final String grup;
  final String program;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                namaadmin,
                style: GoogleFonts.plusJakartaSans(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
              ),
              const Text("  "),
              Text(
                nomoradmin,
                style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(keterangan,
              style: GoogleFonts.plusJakartaSans(
                  textStyle: TextStyle(fontWeight: FontWeight.w500))),
          Text(grup,
              style: GoogleFonts.plusJakartaSans(
                  textStyle: TextStyle(
                fontWeight: FontWeight.w500,
              ))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(program,
                  style: GoogleFonts.plusJakartaSans(
                      textStyle:
                          TextStyle(fontSize: 13, color: Color(0xff233975)))),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(128, 17),
                    primary: const Color(0xff57cb93),
                    onPrimary: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hubungi",
                        style: GoogleFonts.plusJakartaSans(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )),
                    ImageIcon(
                      AssetImage(
                        "assets/icon/whatsapp.png",
                      ),
                      size: 17,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 2,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}

class DataDiri extends StatelessWidget {
  const DataDiri({
    super.key,
    required this.icondata,
    required this.data,
    required this.isi,
  }) : super();
  final String icondata;
  final String data;
  final String isi;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: ImageIcon(
              AssetImage(icondata),
              color: const Color(0xff233975),
              size: 25,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data,
                  style: GoogleFonts.plusJakartaSans(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black45),
                  )),
              Container(
                width: 320,
                child: Text(
                  isi,
                  style: GoogleFonts.plusJakartaSans(
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
