import 'package:bookly/features/home/presentation/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: Icon(Icons.close),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: BookDetailsViewBody(),
    );
  }
}
