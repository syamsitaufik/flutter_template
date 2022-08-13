import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_template/indonesia/models/province.dart';
import 'package:http/http.dart' as http;

class WilayahIndonesia extends StatelessWidget {
  const WilayahIndonesia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? idProv;
    return Scaffold(
        appBar: AppBar(
          title: const Text("WILAYAH INDONESIA"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            DropdownSearch<Province>(
              mode: Mode.DIALOG,
              showSearchBox: true,
              onChanged: (value) => idProv = value?.id,
              dropdownBuilder: (context, selectedItem) =>
                  Text(selectedItem?.name ?? "Belum memilih provinsi"),
              popupItemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.name),
              ),
              onFind: (text) async {
                print("Selected Province ID: ");
                print(idProv);
                var response = await http.get(Uri.parse(
                    "http://www.emsifa.com/api-wilayah-indonesia/api/provinces.json"));
                if (response.statusCode != 200) {
                  return [];
                }
                List allProvince = (json.decode(response.body));
                List<Province> allModelProvince = [];
                for (var element in allProvince) {
                  allModelProvince.add(Province(
                    id: element["id"],
                    name: element["name"],
                  ));
                }
                // return item from api
                return allModelProvince;
              },
            ),
            // DropdownSearch<String>(
            //   mode: Mode.MENU,
            //   onChanged: print,
            //   onFind: (text) async {
            //     var response = await http.get(Uri.parse(
            //         "http://www.emsifa.com/api-wilayah-indonesia/api/provinces.json"));
            //     if (response.statusCode != 200) {
            //       return [];
            //     }
            //     List allProvince = (json.decode(response.body));
            //     List<String> allNameProvince = [];
            //     allProvince.forEach((element) {
            //       allNameProvince.add(element["name"]);
            //     });
            //     return allNameProvince;
            //   },
            // ),
          ],
        ));
  }
}
