import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  List<Pendapatan> data = [
    Pendapatan(
      gambar:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
      nama: 'Securinvest Sharia Sukuk Fund',
      skor: '4,1',
      jenis: 'Pendapatan Tetap',
      imbalHasil1: '6.2%',
      imbalHasil2: '8.5%',
      hargaUnit: 'Rp.1.080',
      danaKelolaan: 'Rp.3.3T',
    ),
    Pendapatan(
      gambar:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
      nama: 'Start Stable Income Fund',
      skor: '3.2',
      jenis: 'Pendapatan Tetap',
      imbalHasil1: '12%',
      imbalHasil2: '50%',
      hargaUnit: 'Rp.1.070',
      danaKelolaan: 'Rp.256M',
    ),
    Pendapatan(
      gambar:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
      nama: 'Syailendra Pendapatan Tetap Premium',
      skor: '5.2',
      jenis: 'Pendapatan Tetap',
      imbalHasil1: '15%',
      imbalHasil2: '66%',
      hargaUnit: 'Rp.1.270',
      danaKelolaan: 'Rp.306M',
    ),
    Pendapatan(
      gambar:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
      nama: 'Securinvest Sharia Sukuk Fund',
      skor: '4,1',
      jenis: 'Pendapatan Tetap',
      imbalHasil1: '6.2%',
      imbalHasil2: '8.5%',
      hargaUnit: 'Rp.1.080',
      danaKelolaan: 'Rp.3.3T',
    ),
    Pendapatan(
      gambar:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
      nama: 'Start Stable Income Fund',
      skor: '3.2',
      jenis: 'Pendapatan Tetap',
      imbalHasil1: '12%',
      imbalHasil2: '50%',
      hargaUnit: 'Rp.1.070',
      danaKelolaan: 'Rp.256M',
    ),
    Pendapatan(
      gambar:
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
      nama: 'Syailendra Pendapatan Tetap Premium',
      skor: '5.2',
      jenis: 'Pendapatan Tetap',
      imbalHasil1: '15%',
      imbalHasil2: '66%',
      hargaUnit: 'Rp.1.270',
      danaKelolaan: 'Rp.306M',
    ),
  ];

  bool imbalHasil = false;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis 2 Provis - Kelompok 7',
      home: Scaffold(
        appBar: AppBar(
            leading: const FlutterLogo(),
            backgroundColor: Colors.blueGrey,
            title: const Text('Quiz Flutter'),
            actions: const <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Periode imbal hasil",
                    style: const TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 104, 98, 98)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  child: DropdownButton(
                    value: imbalHasil,
                    underline: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 1.0, color: Colors.grey))),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: false,
                        child: Text("6 bulan"),
                      ),
                      DropdownMenuItem(
                        value: true,
                        child: Text("1 tahun"),
                      ),
                    ],
                    onChanged: (bool? newValue) {
                      setState(() {
                        if (newValue != null) {
                          imbalHasil = newValue;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                          child: Column(children: [
                        ListTile(
                            onTap: () {},
                            leading: Image.network("${data[index].gambar}"),
                            trailing: Image.network("${data[index].gambar}"),
                            title: Text("${data[index].nama}"),
                            subtitle: Row(children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: Colors.green,
                              ),
                              Text(
                                  " ${data[index].skor} - ${data[index].jenis}")
                            ]),
                            tileColor: Colors.white70),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  Container(
                                      decoration: BoxDecoration(),
                                      padding: EdgeInsets.all(15),
                                      child: Text('Imbal Hasil')),
                                  Container(
                                    decoration: BoxDecoration(),
                                    padding: EdgeInsets.only(
                                        left: 15, right: 15, bottom: 25),
                                    child: Row(children: [
                                      Text(
                                        imbalHasil
                                            ? "${data[index].imbalHasil2}"
                                            : "${data[index].imbalHasil1}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                255, 96, 186, 84)),
                                      ),
                                      Text(
                                        "/th",
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 178, 164, 164)),
                                      ),
                                    ]),
                                  )
                                ])),
                            Container(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  Container(
                                      decoration: BoxDecoration(),
                                      padding: EdgeInsets.all(15),
                                      child: Text('Harga Unit')),
                                  Container(
                                      decoration: BoxDecoration(),
                                      padding: EdgeInsets.only(
                                          left: 15, right: 15, bottom: 25),
                                      child: Row(children: [
                                        Text(
                                          "${data[index].hargaUnit}",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 10, 9, 9)),
                                        ),
                                        Icon(
                                          Icons.arrow_upward,
                                          size: 18,
                                          color: Colors.green,
                                        ),
                                      ]))
                                ])),
                            Container(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                  Container(
                                      decoration: BoxDecoration(),
                                      padding: EdgeInsets.all(15),
                                      child: Text('Dana Kelolaan')),
                                  Container(
                                    decoration: BoxDecoration(),
                                    padding: EdgeInsets.only(
                                        left: 15, right: 15, bottom: 25),
                                    child: Text(
                                      "${data[index].danaKelolaan}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 10, 9, 9)),
                                    ),
                                  ),
                                ])),
                          ],
                        )
                      ]));
                    }))
          ],
        ),
      ),
    );
  }
}

class Pendapatan {
  final String gambar;
  final String nama;
  final String skor;
  final String jenis;
  final String imbalHasil1;
  final String imbalHasil2;
  final String hargaUnit;
  final String danaKelolaan;

  Pendapatan(
      {required this.gambar,
      required this.nama,
      required this.skor,
      required this.jenis,
      required this.imbalHasil1,
      required this.imbalHasil2,
      required this.hargaUnit,
      required this.danaKelolaan});
}

class Kartu extends StatelessWidget {
  const Kartu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      ListTile(
          onTap: () {},
          leading: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          trailing: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          title: const Text('Judul'),
          subtitle: const Text("ini Subjudul"),
          tileColor: Colors.white70),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Container(
                    decoration: BoxDecoration(border: Border.all()),
                    padding: EdgeInsets.all(14),
                    child: Text('Hello World 1a')),
                Container(
                    decoration: BoxDecoration(border: Border.all()),
                    padding: EdgeInsets.all(14),
                    child: Text('Hello World 1b')),
              ])),
        ],
      )
    ]));
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Kelompok 7'),
            content: const Text(
                'Azzahra Siti Hadjar (azzahrasth@upi.edu), Najma Qalbi Dwiharani (najmadwiharani@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
