import 'package:bookly/core/utils/app_assets.dart';
import 'package:bookly/features/home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        title: Image.asset(
          AppAssets.logo,
          width: 75,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              AppAssets.icSearch,
              width: 25,
            ),
          ),
        ],
      ),
      body: HomeViewBody(),
    );
  }
}
