import 'package:concung/repository/device_repository.dart';
import 'package:concung/views/login/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/cc_text_style.dart';
import 'controller/list_product_controller.dart';
import 'widgets/product_widget.dart';

class ListProduct extends GetWidget<ListProductController> {
  ListProduct({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10),
                child: GestureDetector(
                  onTap: () async {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('status', false);
                    Get.back();
                  },
                  child: Container(
                    height: 38,
                    width: 38,
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff5D5FEF), width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 33,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Ipad',
                  style: CCTextStyle.bold36,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Mini',
                  style: CCTextStyle.bold36,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      'Sort by:   ',
                      style: CCTextStyle.regular,
                    ),
                    Text(
                      'Popular',
                      style: CCTextStyle.regularPurple,
                    ),
                    SvgPicture.asset('assets/arrow_down.svg'),
                    Expanded(child: Container()),
                    SvgPicture.asset('assets/filter.svg')
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Obx(() => Column(
                        children: controller.list.value
                            .map((e) => ProductWidget(
                                  product: e,
                                ))
                            .toList(),
                      )),
                ),
              )
            ]),
          ),
          Positioned.fill(
            left: 100.w,
            bottom: Get.height - 200,
            child: Image.network(
              'https://vtv1.mediacdn.vn/thumb_w/650/2022/10/22/gsmarena002-16664179513151637538550-crop-1666417958742447613554.jpg',
            ),
          )
        ],
      ),
    ));
  }
}
