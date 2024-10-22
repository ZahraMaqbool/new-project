import 'package:flutter/material.dart';
import 'package:practice_practice/features/client/models/products.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({super.key, required this.product});
  final Products product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 120,
      child: ListTile(
        leading: Row(
          children: [Image.asset(product.imageUrl), Text(product.name)],
        ),
      ),
    );
  }
}
