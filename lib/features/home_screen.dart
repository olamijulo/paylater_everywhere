import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paylater_everywhere/app/app_assets.dart';
import 'package:paylater_everywhere/features/home_view_model.dart';
import 'package:paylater_everywhere/widgets/merchant_widget.dart';
import 'package:paylater_everywhere/widgets/product_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.watch(homeViewModelProvider);

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 189.0,
                decoration: BoxDecoration(color: Color(0xFFD0DAFF)),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 35.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 160.0,
                      child: Text(
                        'Pay later everywhere',
                        style: TextStyle(
                            fontSize: 28.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 0.7),
                      child: Container(
                        width: 17.0,
                        height: 17.0,
                        padding: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: SvgPicture.asset(
                          AppAssets.infoIcon,
                          colorFilter: ColorFilter.mode(
                              Color(0xFFD0DAFF), BlendMode.srcIn),
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 50.0,
                        ),
                        RichText(
                            text: TextSpan(
                                text: 'Shopping limit: ₦0',
                                style: TextStyle(
                                    color: Color(0xFF20294A), fontSize: 12.0))),
                        SizedBox(
                          height: 5.0,
                        ),
                        SizedBox(
                          width: 134.0,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xFF274FED),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(4.0))),
                              onPressed: () {},
                              child: Text(
                                'Activate Credit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    fontFamily: 'Axiforma',
                                    fontWeight: FontWeight.w700),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 40.0,
                            child: TextFormField(
                              style: TextStyle(fontSize: 14.0),
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFF1F3FE),
                                  hintText: 'Search for products or stores',
                                  hintStyle: TextStyle(
                                      fontSize: 12.0, color: Color(0xFF9494B8)),
                                  prefixIcon: Transform.scale(
                                    scale: 0.5,
                                    child: SvgPicture.asset(
                                      AppAssets.searchIcon,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide.none)),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Container(
                          height: 45.0,
                          width: 45.0,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Color(0xFFF4F5FE),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: SvgPicture.asset(AppAssets.scanIcon),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 405.0,
                    width: double.infinity,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                    decoration: BoxDecoration(color: Color(0xFFF1F3FE)),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 380.0,
                            child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                childAspectRatio: 1,
                              ),
                              itemCount: homeViewModel.productList.length,
                              itemBuilder: (context, index) {
                                return ProductWidget(
                                  productName: homeViewModel.productList[index]
                                      ['product_name'],
                                  price: homeViewModel.productList[index]
                                      ['price'],
                                  discountPrice: homeViewModel
                                      .productList[index]['discount_price'],
                                  productImage: homeViewModel.productList[index]
                                      ['product_image'],
                                  discountPercentage:
                                      homeViewModel.productList[index]
                                          ['discount_percentage'],
                                  merchantIcon: homeViewModel.productList[index]
                                      ['merchant_icon'],
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Featured Merchants',
                              style: TextStyle(
                                  color: Color(0xFF33334D),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'View All',
                              style: TextStyle(
                                  color: Color(0xFF274FED),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 40.0,
                              crossAxisSpacing: 3,
                              childAspectRatio: 1,
                            ),
                            itemCount: homeViewModel.merchants.length,
                            itemBuilder: (context, index) {
                              return MerchantWidget(
                                merchantLogo: homeViewModel.merchants[index]
                                    ['merchant_logo'],
                                merchantName: homeViewModel.merchants[index]
                                    ['merchant_name'],
                                backgroundColor: homeViewModel.merchants[index]
                                    ['background_color'],
                                isOnline: homeViewModel.merchants[index]
                                    ['is_online'],
                              );
                            })
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 60.0,
              )
            ],
          ),
        ));
  }
}
