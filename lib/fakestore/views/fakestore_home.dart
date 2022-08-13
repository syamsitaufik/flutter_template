import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_template/fakestore/controllers/product_controller.dart';
import 'package:flutter_template/fakestore/widgets/product_tile.dart';
import 'package:get/get.dart';

class FakestoreHome extends StatelessWidget {
  // const FakestoreHome({Key? key}) : super(key: key);
  final ProductController productController = Get.put(ProductController());
  // List<ProductsModel> productModel = productController.productList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back_sharp),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    "ShopMe",
                    style: TextStyle(
                        fontFamily: "avenir",
                        fontSize: 32,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return AlignedGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  itemCount: productController.productList.length,
                  itemBuilder: (context, index) {
                    return ProductTile(productController.productList[index]);
                  },
                );
              }
            }),
          )
        ],
      ),
    );
  }
}
