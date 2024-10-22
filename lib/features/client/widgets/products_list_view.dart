import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/features/client/models/products.dart';

class ProductsListView extends StatefulWidget {
  const ProductsListView({super.key});

  @override
  State<ProductsListView> createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView> {
  final List<Products> product = [
    Products(name: "All", imageUrl: "assets/burger.jpeg"),
    Products(name: "pizza", imageUrl: "assets/burger.jpeg"),
    Products(name: "burger", imageUrl: "assets/burger.jpeg"),
    Products(name: "burger", imageUrl: "assets/burger.jpeg"),
    Products(name: "burger", imageUrl: "assets/burger.jpeg"),
    Products(name: "burger", imageUrl: "assets/burger.jpeg"),
    Products(name: "burger", imageUrl: "assets/burger.jpeg"),
    Products(name: "burger", imageUrl: "assets/burger.jpeg"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(4.0),
          padding: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            children: [
              SizedBox(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    product[index].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                product[index].name,
                style: GoogleFonts.roboto(
                    fontSize: 13, fontWeight: FontWeight.w400),
              )
            ],
          ),
        );
        
      },
    );
  }
}
