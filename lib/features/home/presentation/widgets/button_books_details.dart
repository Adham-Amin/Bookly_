import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ButtonBookDetails extends StatelessWidget {
  const ButtonBookDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99 \$',
              textColor: AppColor.black,
              backgroundColor: AppColor.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              textColor: AppColor.white,
              backgroundColor: AppColor.burntSienna,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
