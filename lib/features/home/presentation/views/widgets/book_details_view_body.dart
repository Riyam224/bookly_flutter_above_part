import 'package:flutter/material.dart';
import 'package:livree/core/utils/styles.dart';
import 'package:livree/core/widgets/custom_button.dart';
import 'package:livree/features/home/presentation/views/widgets/book_rating.dart';
import 'package:livree/features/home/presentation/views/widgets/books_action.dart';
import 'package:livree/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:livree/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:livree/features/home/presentation/views/widgets/similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .15),
                  child: const FeaturedListViewItem(),
                ),
                const SizedBox(
                  height: 43,
                ),
                const Text(
                  'the jungle book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                    'the good book',
                    style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('you can else  like ',
                      style: Styles.textStyle14
                          .copyWith(fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// todo take children and divide the ui 
class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}