  import 'package:bookly/core/utils/app_color.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchBook(BuildContext context, String urlBook) async {
     final Uri url = Uri.parse(urlBook);
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text('Could not launch', style: AppStyles.textMedium16.copyWith(color: AppColor.white),),
        ),
      );
    }
  }