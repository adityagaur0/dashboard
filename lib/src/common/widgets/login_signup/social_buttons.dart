import 'package:dashboard/src/features/authentication/controllers/login/login_controller.dart';
import 'package:dashboard/src/utils/constants/colour.dart';
import 'package:dashboard/src/utils/constants/imges_string.dart';
import 'package:dashboard/src/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () => controller.googleSignIn(),
            icon: const Image(
              image: AssetImage(TImages.google),
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            ),
          ),
        ),
        // SizedBox(
        //   width: 10,
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //       border: Border.all(color: TColors.grey),
        //       borderRadius: BorderRadius.circular(100)),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: const Image(
        //       image: AssetImage(TImages.google),
        //       width: TSizes.iconMd,
        //       height: TSizes.iconMd,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
