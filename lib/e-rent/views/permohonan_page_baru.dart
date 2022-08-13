// import 'package:flutter/material.dart';
// import 'package:flutter_template/controllers/test_api_controller.dart';
// import 'package:flutter_template/models/asset_category.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_instance/src/extension_instance.dart';

// class PermohonanPageBaru extends StatelessWidget {
//   final Data assetCategory;
//   PermohonanPageBaru(this.assetCategory);
//   // const PermohonanPageBaru({Key? key}) : super(key: key);
//   final TestApiController testApiController = Get.put(TestApiController());

//   @override
//   Widget build(BuildContext context) {
//     Widget status() {
//       // assetCategory.data = testApiController.assetCategoryList[1];
//       // print('hello' + testApiController.assetCategoryList[1].toString());
//       return Container(
//         width: double.infinity,
//         height: 41,
//         decoration: const BoxDecoration(
//           color: Color(0xff7C72FF),
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(8),
//             topRight: Radius.circular(8),
//           ),
//         ),
//         child: const Center(
//           child: Text(
//             'Sila Lengkapkan Pilihan Anda',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//       );
//     }

//     Widget dropItem() {
//       return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25),
//         child: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: Colors.black,
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: DropdownButtonHideUnderline(
//               child: DropdownButton<String>(
//                 dropdownColor: Colors.black,
//                 hint: const Text(
//                   'Jenis Harta',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//                 isExpanded: true,
//                 iconSize: 30,
//                 icon: Icon(
//                   Icons.arrow_drop_down,
//                   color: Colors.white,
//                 ),
//                 value: value,
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//                 items: items.map(buildMenuItem).toList(),
//                 onChanged: (value) => setState(() => this.value = value),
//               ),
//             ),
//           ),
//         ),
//       );
//     }

//     Widget dropItem2() {
//       return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25),
//         child: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: Colors.black,
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: DropdownButtonHideUnderline(
//               child: DropdownButton<String>(
//                 dropdownColor: Colors.black,
//                 hint: const Text(
//                   'Seksyen',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//                 isExpanded: true,
//                 iconSize: 30,
//                 icon: Icon(
//                   Icons.arrow_drop_down,
//                   color: Colors.white,
//                 ),
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//                 value: value2,
//                 items: items2.map(buildMenuItem2).toList(),
//                 onChanged: (value2) => setState(() => this.value2 = value2),
//               ),
//             ),
//           ),
//         ),
//       );
//     }

//     Widget dropItem3() {
//       return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25),
//         child: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: Colors.black,
//           ),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: DropdownButtonHideUnderline(
//               child: DropdownButton<String>(
//                 dropdownColor: Colors.black,
//                 hint: const Text(
//                   'Kawasan',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.white),
//                 ),
//                 isExpanded: true,
//                 iconSize: 30,
//                 icon: Icon(
//                   Icons.arrow_drop_down,
//                   color: Colors.white,
//                 ),
//                 style: const TextStyle(fontWeight: FontWeight.bold),
//                 value: value3,
//                 items: items3.map(buildMenuItem3).toList(),
//                 onChanged: (value3) => setState(() => this.value3 = value3),
//               ),
//             ),
//           ),
//         ),
//       );
//     }

//     Widget button() {
//       return Container(
//         margin: EdgeInsets.only(
//           top: 17,
//           bottom: 12,
//         ),
//         width: 94,
//         child: TextButton(
//           style: TextButton.styleFrom(
//               backgroundColor: Colors.black,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(6),
//               )),
//           onPressed: () {
//             Navigator.pushNamed(context, '/cari-permohonan');
//           },
//           child: const Text(
//             'Cari',
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
//       );
//     }

//     Widget header() {
//       return Stack(
//         children: [
//           /* Container(
//             height: 246,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: black,
//               borderRadius: BorderRadius.only(
//                 bottomRight: Radius.circular(36),
//                 bottomLeft: Radius.circular(36),
//               ),
//             ),
//           ), */
//           Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(
//                   top: 26,
//                   left: 16,
//                   right: 16,
//                 ),
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.lightBlueAccent,
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//                 child: Column(
//                   children: [
//                     status(),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     dropItem(),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     dropItem2(),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     dropItem3(),
//                     button(),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       );
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('permohonan Asset'),
//         centerTitle: true,
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             color: Color(0xff7C72FF),
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(8),
//               topRight: Radius.circular(8),
//             ),
//           ),
//         ),
//         leading: GestureDetector(
//           onTap: () {
//             Navigator.pushNamed(context, '/home');
//           },
//           child: Icon(Icons.arrow_back),
//         ),
//       ),
//       body: Container(
//         color: Colors.yellow.withOpacity(0.1),
//         child: Column(
//           children: [
//             header(),
//           ],
//         ),
//       ),
//     );
//   }
// }
