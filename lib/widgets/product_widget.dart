import 'package:flutter/material.dart';
import 'package:paylater_everywhere/utils/string_utils.dart';

class ProductWidget extends StatelessWidget {
  final String? productName;
  final double? price;
  final double? discountPrice;
  final String? discountPercentage;
  final String? productImage;
  final String? merchantIcon;
  const ProductWidget({
    super.key,
    this.productName,
    this.price,
    this.discountPrice,
    this.discountPercentage,
    this.productImage,
    this.merchantIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 161.0,
      width: 174.0,
      padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
      decoration: BoxDecoration(
          color: Colors.white70, borderRadius: BorderRadius.circular(10.0)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              productImage ?? '',
              scale: 2.5,
            ),
          ),
          Positioned(
            left: 10.0,
            child: Container(
              height: 50.0,
              width: 50.0,
              padding: EdgeInsets.all(3.0),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: discountPercentage == ''
                  ? Image.asset(merchantIcon ?? '')
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('Pay',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500)),
                        Text(
                          discountPercentage ?? '',
                          style: TextStyle(
                              color: Color(0xFF274FED),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
            ),
          ),
          Positioned(
            top: 130.0,
            left: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName ?? '',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w800),
                ),
                Row(
                  spacing: 10.0,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: StringUtils.formatNaira(price ?? 0),
                          style: TextStyle(
                              color: Color(0xFF274FED),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w800)),
                    ),
                    RichText(
                      text: TextSpan(
                          text: StringUtils.formatNaira(discountPrice ?? 0),
                          style: TextStyle(
                              color:  Colors.grey[400],
                              fontSize: 12.0,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 3.0,
                              fontWeight: FontWeight.w800)),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
