import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_practice/core/constants/string/app_colors.dart';
import 'package:practice_practice/features/client/models/items.dart';
import 'package:practice_practice/features/client/views/screens/dash_board_screen.dart';

class ItemsDetailPage extends StatefulWidget {
  const ItemsDetailPage({
    super.key,
    required this.items,
  });

  final Items items;

  @override
  State<ItemsDetailPage> createState() => _ItemsDetailPageState();
}

class _ItemsDetailPageState extends State<ItemsDetailPage> {
  // static const double topContainer = 300;
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Stack(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Align(
                        alignment: const Alignment(0, 0),
                        child: SizedBox(
                          height: height * 0.4,
                          width: width * 0.9,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              widget.items.imageUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 10,
                        child: Row(
                          children: [
                            CustomButton(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, DashBoardScreen.routeName);
                              },
                              color: AppColors.whiteColor,
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            const Spacer(
                              flex: 4,
                            ),
                            CustomButton(
                              onTap: () {},
                              color: AppColors.whiteColor,
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 30),
                      child: Text(
                        widget.items.name,
                        style: GoogleFonts.abrilFatface(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          widget.items.imageUrl,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Price:${widget.items.price.toString()}',
                        style: GoogleFonts.changa(
                            color: Colors.amber.shade800,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                  ],
                ),
                Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                    indent: 20.0,
                    endIndent: 20.0),
                Row(
                  children: [
                    Expanded(
                        flex: 10,
                        child: Text(
                          textAlign: TextAlign.center,
                          widget.items.description,
                          style: GoogleFonts.almarai(),
                        ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Text(
                          textAlign: TextAlign.center,
                          widget.items.ingredients.toString(),
                          style: GoogleFonts.abel(
                              fontSize: 20, fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          height: 200,
                          width: width * 1,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: CustomButton(
                                        onTap: () {},
                                        color: AppColors.blackColor,
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.black,
                                        )),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: CustomButton(
                                        onTap: () {},
                                        color: AppColors.blackColor,
                                        child: const Icon(
                                          Icons.add,
                                          color: Colors.black,
                                        )),
                                  ),
                                  Expanded(
                                      flex: 3,
                                      child:
                                          Text(widget.items.price.toString())),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 50,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            color: Colors.amber.shade900,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Add to cart',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 2,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.child,
      required this.color,
      required this.onTap});
  final Widget child;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var Size(:height, :width) = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
            height: height * 0.05,
            width: width * 0.11,
            decoration: BoxDecoration(
                border: Border.all(
                  color: color,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: child),
      ),
    );
  }
}
