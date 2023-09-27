
import 'package:flutter/material.dart';
import 'package:livree/constants.dart';
import 'package:livree/core/utils/assets.dart';
import 'package:livree/core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.testImage,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text('a walk to remember ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    )),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                '3.5k best selling',
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
            Row(
                children: [
                  Text(
                    '33.99',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
