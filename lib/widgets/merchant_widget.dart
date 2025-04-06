import 'package:flutter/material.dart';

class MerchantWidget extends StatelessWidget {
  final String merchantLogo;
  final bool isOnline;
  final String merchantName;
  final int? backgroundColor;
  const MerchantWidget({
    super.key,
    required this.merchantLogo,
    required this.isOnline,
    required this.merchantName,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                  color: backgroundColor == null
                      ? Colors.transparent
                      : Color(backgroundColor ?? 0xFFFFFFFF),
                  shape: BoxShape.circle),
              child: Image.asset(
                merchantLogo,
                scale: 3.0,
              ),
            ),
            isOnline
                ? Positioned(
                    left: 42.0,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      child: Container(
                        height: 15.0,
                        width: 15.0,
                        decoration: BoxDecoration(
                            color: Color(0xFF24C78B),
                            border: Border.all(color: Colors.white, width: 2.5),
                            shape: BoxShape.circle),
                      ),
                    ),
                  )
                : SizedBox.shrink()
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          merchantName,
          style: TextStyle(fontSize: 12.0, overflow: TextOverflow.ellipsis),
        )
      ],
    );
  }
}
