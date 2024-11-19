import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';
// import 'package:practice_practice/features/client/models/restaurant.dart';

import '../auth/models/restaurant.dart';
// import 'package:practice_practice/features/client/views/dash_board_screen.dart';

class RestaurantListView extends StatefulWidget {
  const RestaurantListView({super.key});

  @override
  State<RestaurantListView> createState() => _RestaurantListViewState();
}

class _RestaurantListViewState extends State<RestaurantListView> {
  final List<Restaurant> restaurant = [
    Restaurant(
        title: "Roz Garden restauarnt",
        subTitle: "chiken-pizza-hotDogs",
        imageUrl: "assets/restaurant.jpeg"),
    Restaurant(
        title: "Roz Garden restauarnt",
        subTitle: "chiken-pizza-hotDogs",
        imageUrl: "assets/restaurant.jpeg"),
    Restaurant(
        title: "Roz Garden restauarnt",
        subTitle: "chiken-pizza-hotDogs",
        imageUrl: "assets/restaurant.jpeg"),
    Restaurant(
        title: "Roz Garden restauarnt",
        subTitle: "chiken-pizza-hotDogs",
        imageUrl: "assets/restaurant.jpeg"),
    Restaurant(
        title: "Roz Garden restauarnt",
        subTitle: "chiken-pizza-hotDogs",
        imageUrl: "assets/restaurant.jpeg"),
    Restaurant(
        title: "Roz Garden restauarnt",
        subTitle: "chiken-pizza-hotDogs",
        imageUrl: "assets/restaurant.jpeg"),
    Restaurant(
        title: "Roz Garden restauarnt",
        subTitle: "chiken-pizza-hotDogs",
        imageUrl: "assets/restaurant.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    var Size(:height, :width) = MediaQuery.sizeOf(context);
    return SizedBox(
      height: height * 0.3,
      width: width * 1,
      child: ListView.builder(
        itemCount: restaurant.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: width * 0.7,
            child: Card(
              color: AppColors.whiteColor,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      restaurant[index].imageUrl,
                      width: width * 0.9,
                      height: height * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            restaurant[index].title,
                            maxLines: 1,
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500, fontSize: 13),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                    child: Text(
                      restaurant[index].subTitle,
                      maxLines: 1,
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500, fontSize: 13),
                    ),
                  ),
                  
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: AppColors.buttonBackGround,
                            size: 20,
                          ),
                          Expanded(
                            child: Text(
                              '4.7',
                              style: GoogleFonts.roboto(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Icon(
                            Icons.pedal_bike,
                            color: AppColors.buttonBackGround,
                            size: 20,
                          ),
                          Expanded(
                            child: Text(
                              'free',
                              style: GoogleFonts.roboto(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Icon(
                            Icons.timelapse,
                            color: AppColors.buttonBackGround,
                            size: 20,
                          ),
                          Expanded(
                            child: Text(
                              '20 min',
                              style: GoogleFonts.roboto(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
