import 'package:flutter/material.dart';
import 'package:flutter_template/dropdown-1/dropdown1_controller.dart';
import 'package:get/get.dart';

class Dropdown1View extends StatefulWidget {
  @override
  _Dropdown1ViewState createState() => _Dropdown1ViewState();
}

class _Dropdown1ViewState extends State<Dropdown1View> {
  final items = [
    'Pasar',
    'Kediaman',
    'Komersial',
    'Gerai',
  ];
  String? value;

  final items2 = [
    'Seksyen 1',
    'Seksyen 2',
    'Seksyen 3',
    'Seksyen 4',
  ];
  String? value2;

  final items3 = [
    'Kota Damansara',
    'Mutiara Damansara',
  ];
  String? value3;

  // TextStyle textWhite = GoogleFonts.ubuntu(
  //   color: Colors.white,
  // );

  @override
  Widget build(BuildContext context) {
    Widget status() {
      // assetCategory.data = testApiController.assetCategoryList[1];
      // print('pilihan ' + testApiController.assetCategoryList.toString());
      return Container(
        width: double.infinity,
        height: 41,
        decoration: const BoxDecoration(
          color: Color(0xff7C72FF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
        ),
        child: const Center(
          child: Text(
            'Sila Lengkapkan Pilihan Anda',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    Widget dropItem() {
      final Dropdown1Controller testApiController =
          Get.put(Dropdown1Controller());

      // print('pilihan ' + testApiController.assetCategoryList.toString());
      // List<Data> assetCategory =
      //     testApiController.assetCategoryList as List<Data>;

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                dropdownColor: Colors.black,
                hint: const Text(
                  'Jenis Harta',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                isExpanded: true,
                iconSize: 30,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                value: value,
                style: const TextStyle(fontWeight: FontWeight.bold),
                // items: items.map(buildMenuItem).toList(),
                items: testApiController.assetCategoryList.value
                    .map(
                      (map) => DropdownMenuItem(
                          child: Text(map.value), value: map.id),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() => this.value = value as String?);
                  print(this.value);
                },
              ),
            ),
          ),
        ),
      );
    }

    Widget dropItem2() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                dropdownColor: Colors.black,
                hint: const Text(
                  'Seksyen',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                isExpanded: true,
                iconSize: 30,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                style: const TextStyle(fontWeight: FontWeight.bold),
                value: value2,
                items: items2.map(buildMenuItem2).toList(),
                onChanged: (value2) => setState(() => this.value2 = value2),
              ),
            ),
          ),
        ),
      );
    }

    Widget dropItem3() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                dropdownColor: Colors.black,
                hint: const Text(
                  'Kawasan',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                isExpanded: true,
                iconSize: 30,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                style: const TextStyle(fontWeight: FontWeight.bold),
                value: value3,
                items: items3.map(buildMenuItem3).toList(),
                onChanged: (value3) => setState(() => this.value3 = value3),
              ),
            ),
          ),
        ),
      );
    }

    Widget button() {
      return Container(
        margin: const EdgeInsets.only(
          top: 17,
          bottom: 12,
        ),
        width: 94,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              )),
          onPressed: () {
            Navigator.pushNamed(context, '/cari-permohonan');
          },
          child: const Text(
            'Cari',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    Widget header() {
      return Stack(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 26,
                  left: 16,
                  right: 16,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  children: [
                    status(),
                    const SizedBox(
                      height: 15,
                    ),
                    dropItem(),
                    const SizedBox(
                      height: 15,
                    ),
                    dropItem2(),
                    const SizedBox(
                      height: 15,
                    ),
                    dropItem3(),
                    button(),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('permohonan Asset'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: Color(0xff7C72FF),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        color: Colors.yellow.withOpacity(0.1),
        child: Column(
          children: [
            header(),
          ],
        ),
      ),
    );
  }

  // DropdownMenuItem<String> assetCategoryItem(String item) => DropdownMenuItem(
  //       value: item,
  //       child: Text(
  //         item,
  //       ),
  //     );

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );

  DropdownMenuItem<String> buildMenuItem2(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );

  DropdownMenuItem<String> buildMenuItem3(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );
}
