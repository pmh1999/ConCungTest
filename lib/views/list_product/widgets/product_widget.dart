import 'package:concung/models/device_model.dart';
import 'package:concung/repository/device_repository.dart';
import 'package:concung/views/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constant/cc_text_style.dart';

class ProductWidget extends StatelessWidget {
  DeviceModel product;
  ProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color.fromRGBO(44, 44, 44, 0.05),
            offset: Offset(0, 0),
            blurRadius: 1,
          ),
          BoxShadow(
            color: Color.fromRGBO(44, 44, 44, 0.1),
            offset: Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.network(
                product.url,
                width: 345.w,
                height: 165.h,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.network(
                    'https://vtv1.mediacdn.vn/thumb_w/650/2022/10/22/gsmarena002-16664179513151637538550-crop-1666417958742447613554.jpg',
                    width: 345.w,
                    height: 165.h,
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  product.name,
                  style: CCTextStyle.regular,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 20),
                child: Text(
                  product.price,
                  style: CCTextStyle.bold,
                ),
              ),
            ]),
          ),
          Positioned(
            left: 10,
            bottom: 70,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(children: [
                Text(
                  product.rate.toString(),
                  style: CCTextStyle.regular.copyWith(color: Colors.white),
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ]),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Text(
                'Buy',
                style: CCTextStyle.bold.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
