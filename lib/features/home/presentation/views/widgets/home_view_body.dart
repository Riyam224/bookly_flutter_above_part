import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:livree/constants.dart';
import 'package:livree/core/utils/assets.dart';
import 'package:livree/core/utils/styles.dart';
import 'package:livree/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:livree/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:livree/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:livree/features/home/presentation/views/widgets/featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedListViewItem(),
          FeaturedBookListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
