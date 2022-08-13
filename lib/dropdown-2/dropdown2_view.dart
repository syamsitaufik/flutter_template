
import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter_template/dropdown-1/dropdown1_model.dart';
import 'package:http/http.dart' as http;

class Dropdown2View extends StatelessWidget {
  const Dropdown2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? idProv;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dropdown Asset Category"),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            DropdownSearch<Datum>(
              mode: Mode.DIALOG,
              // showSearchBox: true,
              onChanged: (value) => idProv = value?.id,
              dropdownBuilder: (context, selectedItem) =>
                  Text(selectedItem?.value ?? "Asset Category"),
              popupItemBuilder: (context, item, isSelected) => ListTile(
                title: Text(item.value),
              ),
              onFind: (text) async {
                print("Selected Province ID: ");
                print(idProv);
                var response = await http
                    .get(Uri.parse("http://94.237.77.87/api/asset_category"));

                if (response.statusCode != 200) {
                  return [];
                }

                AssetCategoryList allAssetCategory =
                    assetCategoryListFromJson(response.body);
                return allAssetCategory.data;
              },
            ),
          ],
        ));
  }
}
