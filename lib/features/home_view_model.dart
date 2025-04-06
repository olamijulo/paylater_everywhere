import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:paylater_everywhere/app/app_assets.dart';

final homeViewModelProvider =
    ChangeNotifierProvider<HomeViewModel>((ref) => HomeViewModel());

class HomeViewModel extends ChangeNotifier {
  List<Map<String, dynamic>> productList = [
    {
      'merchant_icon': '',
      'product_image': AppAssets.productImage,
      'product_name': 'Nokia G20',
      'discount_percentage': '40%',
      'price': 39780.00,
      'discount_price': 88000.00
    },
    {
      'merchant_icon': AppAssets.merchantIconTwo,
      'product_image': AppAssets.productImageFour,
      'product_name': 'iPhone XS Max 4GB..',
      'discount_percentage': '',
      'price': 29599.00,
      'discount_price': 315000.00
    },
    {
      'merchant_icon': AppAssets.merchantIconThree,
      'product_image': AppAssets.productImageTwo,
      'product_name': 'Anker Soundcore',
      'discount_percentage': '',
      'price': 39780.00,
      'discount_price': 88000.00
    },
    {
      'merchant_icon': AppAssets.merchantIconOne,
      'product_image': AppAssets.productImageThree,
      'product_name': 'IPhone 12 Pro',
      'discount_percentage': '',
      'price': 490500.00,
      'discount_price': 515000.00
    },
    {
      'merchant_icon': '',
      'product_image': AppAssets.productImage,
      'product_name': 'Nokia G20',
      'discount_percentage': '40%',
      'price': 39780.00,
      'discount_price': 88000.00
    }
  ];

  List<Map<String, dynamic>> merchants = [
    {
      'merchant_logo': AppAssets.orileRestaurant,
      'merchant_name': 'Orile Restaurant',
      'background_color': null,
      'is_online': true
    },
    {
      'merchant_logo': AppAssets.slot,
      'merchant_name': 'Slot',
      'background_color': null,
      'is_online': true
    },
    {
      'merchant_logo': AppAssets.pointek,
      'merchant_name': 'Pointek',
      'background_color': 0xFF0077C9,
      'is_online': true
    },
    {
      'merchant_logo': AppAssets.ogaBassey,
      'merchant_name': 'Oga Bassey',
      'background_color': null,
      'is_online': true
    },
    {
      'merchant_logo': AppAssets.casper,
      'merchant_name': 'Casper',
      'background_color': 0xFFFE2B5E,
      'is_online': false
    },
    {
      'merchant_logo': AppAssets.dreamWorks,
      'merchant_name': 'Dreamworks',
      'background_color': null,
      'is_online': false
    },
    {
      'merchant_logo': AppAssets.hubmart,
      'merchant_name': 'Hubmart',
      'background_color': null,
      'is_online': true
    },
    {
      'merchant_logo': AppAssets.justUsed,
      'merchant_name': 'Just Used',
      'background_color': null,
      'is_online': true
    },
    {
      'merchant_logo': AppAssets.justFones,
      'merchant_name': 'Just Fones',
      'background_color': 0xFF000000,
      'is_online': true
    },
  ];
}
