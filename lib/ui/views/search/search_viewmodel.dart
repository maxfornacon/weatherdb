import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:postgrest/postgrest.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/app.router.dart';
import 'package:weather/app/supabase_api.dart';
import 'package:weather/datamodels/application_models.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/services/grocery_service.dart';
import 'package:weather/services/product_service.dart';

class SearchViewModel extends ChangeNotifier {
  final _logger = Logger();
  final _productService = locator<ProductService>();
  final _navigationServce = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();
  final _groceryService = locator<GroceryService>();

  TextEditingController searchController = TextEditingController();
  List<dynamic> searchResults = [];

  Future<List<dynamic>> search(String searchTerm, int tabIndex) async {
    _logger.i('Searching for ${searchController.text}');

    print(tabIndex);

    searchResults.clear();
    if (tabIndex == 0) {
      /// TextSearchType.websearch allows to use a search engine like input
      ///
      /// text not inside quote marks will be converted to terms separated
      /// by & operators, as if processed by plainto_tsquery.
      final imageResult = await supabase
          .from('images')
          .select()
          .textSearch('fts', searchTerm,
        type: TextSearchType.websearch,
        config: 'english',
      )
          .execute();

      if (imageResult.error != null) {
        return [];
      }

      final imageResultList = imageResult.data as List;
      searchResults.addAll(
          imageResultList.map((e) => AppImage.fromJson(e)).toList());

      notifyListeners();

      if (searchResults.length < 20) {
        final postResult = await supabase
            .from('posts')
            .select(
            "*, users!posts_posted_by_fkey(*), liked(*, users(*)), images(*)")
            .textSearch('fts', "'$searchTerm'",
          type: TextSearchType.websearch,
          config: 'english',
        )
            .execute();


        print(postResult.data);

        if (postResult.error != null) {
          return [];
        }

        final postResultList = postResult.data as List;
        searchResults.addAll(
            postResultList.map((e) => Post.fromJson(e)).toList());
      }
    } else if (tabIndex == 1) {

    } else if (tabIndex == 2) {
      searchUsers(searchTerm);
    }

    // print(searchResults);

    notifyListeners();

    return searchResults;
  }

  void searchUsers(String searchTerm) async {
    _logger.i('Searching for ${searchController.text}');

    searchResults.clear();

    /// TextSearchType.websearch allows to use a search engine like input
    ///
    /// text not inside quote marks will be converted to terms separated
    /// by & operators, as if processed by plainto_tsquery.
    final userResult = await supabase
        .from('users')
        .select()
        .ilike('username', '%$searchTerm%')
        .execute();

    if (userResult.error != null) {
      return;
    }

    final userResultList = userResult.data as List;
    searchResults.addAll(userResultList.map((e) => AppUser.fromJson(e)).toList());

    notifyListeners();
  }

}