import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';
import 'package:practice_practice/features/client/auth/views/items_detail_page.dart';

import '../models/items.dart';

class SeeAllItemsPage extends StatefulWidget {
  static const routeName = "see_all_items";
  const SeeAllItemsPage({super.key});

  @override
  State<SeeAllItemsPage> createState() => _SeeAllItemsPageState();
}

class _SeeAllItemsPageState extends State<SeeAllItemsPage> {
  final List<Items> items = [
    Items(
      name: "Chicken Burger",
      description:
          "Chicken burgers are made with ground chicken meat, which can be seasoned with various herbs and spices to give them a unique flavour. They are often topped with cheese and various condiments, such as mayonnaise, ketchup, and mustard.",
      imageUrl: "assets/burger.jpeg",
      ingredients: ["Dough", "Tomato sauce", "Cheese", "Toppings"],
      price: 10.99,
    ),
    Items(
      name: "Lamb Burger",
      description:
          "Lamb burgers are made with ground lamb meat. They tend to have a distinct, rich flavour and are sometimes seasoned with herbs, such as rosemary, mint or cumin. Lamb burgers can also sometimes be topped with feta cheese or tzatziki sauce.",
      imageUrl: "assets/burger.jpeg",
      ingredients: ["Dough", "Tomato sauce", "Cheese", "Toppings"],
      price: 10.99,
    ),
    Items(
      name: "Specialty Burger",
      description:
          "In Australia, specialty burgers made with kangaroo or crocodile meat are less common and are usually found in specialty or gourmet restaurants. These meats are leaner and have a distinct taste. Kangaroo meat is rich and gamey, whilst crocodile meat is mild and slightly sweet. It’s worth noting that some of these meats, particularly kangaroo and crocodile, may be considered controversial due to conservation and/or cultural reasons and may not be available in all parts of Australia or be legal to consume.",
      imageUrl: "assets/burger.jpeg",
      ingredients: ["Dough", "Tomato sauce", "Cheese", "Toppings"],
      price: 10.99,
    ),
    Items(
      name: "Cheese Burger",
      description:
          "A cheeseburger is a burger with a beef patty and cheese on top. The cheese is usually added on top of the patty whilst it’s still cooking, so it melts and covers the patty. This can be any type of cheese like cheddar, Swiss, American, Blue cheese, etc. The cheeseburger is typically served with lettuce, tomato, onion and condiments, such as ketchup, mustard and mayonnaise, on a bun.",
      imageUrl: "assets/burger.jpeg",
      ingredients: ["Dough", "Tomato sauce", "Cheese", "Toppings"],
      price: 10.99,
    ),
    Items(
      name: "Bacon Burger",
      description:
          "A bacon cheeseburger is a cheeseburger with bacon added. The bacon is typically crispy and added on top of the cheese and beef patty. Some places also put the bacon between the cheese and patty. The bacon adds a smoky and salty flavour to the burger, making it more savoury and indulgent.",
      imageUrl: "assets/burger.jpeg",
      ingredients: ["Dough", "Tomato sauce", "Cheese", "Toppings"],
      price: 10.99,
    ),
    Items(
      name: "Classic Burger",
      description:
          "The classic beef burger is a staple of Australian cuisine. It typically consists of a beef patty, lettuce, tomato, cheese and various sauces, all served on a bun. The patty can be made from a variety of cuts of beef, such as chuck or sirloin, and is often seasoned with salt, pepper and other spices.",
      imageUrl: "assets/burger.jpeg",
      ingredients: ["Dough", "Tomato sauce", "Cheese", "Toppings"],
      price: 10.99,
    ),
    Items(
      name: "Veggie Burger",
      description:
          "A veggie burger is a burger made with plant-based ingredients. These burgers do not contain any meat, and they are often used as a meatless alternative. They can be made with a variety of ingredients, including black beans, kidney beans, chickpeas, lentils, mushrooms and various vegetables, such as carrots, zucchini and bell peppers. These ingredients are often ground and formed into a patty, which is then seasoned and grilled or pan-fried. Veggie burgers are often served on a bun with toppings similar to those with meat patties.",
      imageUrl: "assets/burger.jpeg",
      ingredients: ["Bun", "Beef patty", "Lettuce", "Tomato", "Cheese"],
      price: 8.99,
    ),
    Items(
      name: "Shawarma Burger",
      description:
          "A shawarma burger incorporates the flavours and ingredients of a traditional shawarma sandwich. It is a Middle Eastern dish that typically consists of meat (such as chicken, beef or lamb) that is marinated in a blend of spices, then cooked on a vertical rotisserie and shaved off to be served in a pita bread. Various toppings used include tomatoes, onions, lettuce and tahini sauce.",
      imageUrl: "assets/burger.jpeg",
      ingredients: ["Bun", "Beef patty", "Lettuce", "Tomato", "Cheese"],
      price: 8.99,
    ),
    Items(
      name: "Muffaletta Burger",
      description:
          "A muffaletta burger has the flavours and ingredients of a traditional muffaletta sandwich, a sandwich that is popular in New Orleans. This sandwich is typically made with a round Sicilian sesame bread, filled with a variety of meats, such as ham, salami,and mortadella, as well as cheeses like provolone and olive salad. Similarly, a muffaletta burger is usually made with a beef patty and topped with various meats, cheeses and olive salad.",
      imageUrl: "assets/burger.jpeg",
      ingredients: ["Bun", "Beef patty", "Lettuce", "Tomato", "Cheese"],
      price: 8.99,
    ),
    Items(
      name: "Kubie Burger",
      description:
          "Kubie Burger is an Alberta specialty, also known as Canadian hamburger, that consists of Ukrainian garlic sausage called Kubie pressed into a hamburger bun. This burger contains a creamy cheese spread, cheddar cheese, fried onions and caraway bacon sauerkraut. You can find this regional burger in most of Alberta’s restaurants and local shops.",
      imageUrl: "assets/burger.jpeg",
      ingredients: ["Bun", "Beef patty", "Lettuce", "Tomato", "Cheese"],
      price: 8.99,
    ),
  ];

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  const Spacer(flex: 1),
                  Expanded(
                    flex: 6,
                    child: TextFormField(
                      controller: _controller,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        fillColor: Colors.amber.shade100,
                        hintText: 'Search items',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(flex: 1),
                ],
              ),
              const SizedBox(height: 20),
              MasonryGridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ItemsDetailPage(items: items[index]);
                        },
                      ));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              items[index].imageUrl,
                              fit: BoxFit.cover,
                              height: (index % 3 == 0) ? 180 : 100,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              items[index].name,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
