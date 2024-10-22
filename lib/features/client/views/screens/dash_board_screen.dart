import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/core/common/widgets/search_bar_widget.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';
import 'package:practice_practice/features/client/widgets/item_list_view.dart';
import 'package:practice_practice/features/client/widgets/products_list_view.dart';
import 'package:practice_practice/features/client/widgets/restaurant_list_view.dart';
import 'package:practice_practice/features/client/widgets/user_app_widget.dart';

class DashBoardScreen extends StatefulWidget {
  static const routeName = "/dashboard_screen";
  const DashBoardScreen({
    super.key,
  });

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  static const double _sizeBoxHeight1 = 20;

  static const double _sizeBoxHeight3 = 15;
  static const double _sizeBoxHeight4 = 5;
  @override
  Widget build(BuildContext context) {
    var Size(:height, :width) = MediaQuery.sizeOf(context);
    return Scaffold(
      drawer: const Drawer(),
      appBar: UserHomePageAppBarWidget(width: width, height: height),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: _sizeBoxHeight1,
            ),
            const SizedBox(
              child: TextWidget(),
            ),
            const SizedBox(
              height: _sizeBoxHeight3,
            ),
            SizedBox(
              child: SearchBarWidget(
                  hintAndLabelText: "search dishes,resturents",
                  keyboardType: TextInputType.text,
                  textEditingController: TextEditingController()),
            ),
            const SizedBox(
              height: _sizeBoxHeight1,
            ),
            SizedBox(
              child: CategoryTextWidget(
                onPressesd: () {},
              ),
            ),
            const SizedBox(
              height: _sizeBoxHeight4,
            ),
            SizedBox(height: height * 0.08, child: const ProductsListView()),
            const SizedBox(
              height: _sizeBoxHeight3,
            ),
            SizedBox(
                height: height * 0.27,
                width: width * 1,
                child: const ItemListView()),
            const SizedBox(
              height: _sizeBoxHeight3,
            ),
            SizedBox(
              child: RestauranTextWidget(onPressesd: () {}),
            ),
           const SizedBox(
              child: RestaurantListView(),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTextWidget extends StatelessWidget {
  final String category;
  final String subCategory;
  final VoidCallback onPressesd;

  const CategoryTextWidget({
    super.key,
    required this.onPressesd,
    this.category = "All Catergories",
    this.subCategory = 'See All',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category,
            style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.blackColor),
          ),
          TextButton(
            onPressed: onPressesd,
            child: Text(
              subCategory,
              style: GoogleFonts.roboto(
                color: AppColors.blackColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RestauranTextWidget extends StatelessWidget {
  final String category;
  final String subCategory;
  final VoidCallback onPressesd;

  const RestauranTextWidget({
    super.key,
    required this.onPressesd,
    this.category = "Open Restaurant",
    this.subCategory = 'See All',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category,
            style: GoogleFonts.roboto(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.blackColor),
          ),
          TextButton(
            onPressed: onPressesd,
            child: Text(
              subCategory,
              style: GoogleFonts.roboto(
                color: AppColors.blackColor,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required});

  static const double fontSize = 15;
  @override
  Widget build(BuildContext context) {
    return Text("hey Halal, Good Afternoon!",
        style: GoogleFonts.arefRuqaaInk(
            fontSize: fontSize,
            color: Colors.black,
            decorationColor: Colors.grey,
            fontStyle: FontStyle.italic));
  }
}

class RestaurantWidget extends StatelessWidget {
  final double width, height;
  const RestaurantWidget(
      {super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: width * 0.5,
        child: Card(
          color: AppColors.whiteColor,
          child: Column(
            children: [
              Image.asset(
                "",
                width: width * 0.5,
                height: height * 0.2,
                fit: BoxFit.fill,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Sephora',
                          maxLines: 1,
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500, fontSize: 13),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      const Icon(
                        Icons.star_rate,
                        color: AppColors.ratingStartColor,
                        size: 10,
                      ),
                      SizedBox(
                        width: width * 0.04,
                        child: FittedBox(
                          child: Text(
                            '4.9',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400, fontSize: 10),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: AppColors.blackColor,
                        size: 20,
                      ),
                      Expanded(
                        child: Text(
                          '600m (4mins away)',
                          style: GoogleFonts.roboto(
                              fontSize: 10, fontWeight: FontWeight.w400),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
