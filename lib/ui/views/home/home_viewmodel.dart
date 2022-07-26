import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supabase/supabase.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/app.router.dart';
import 'package:weather/datamodels/application_models.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/services/authentication_service.dart';
import 'package:weather/services/grocery_service.dart';
import 'package:weather/services/post_service.dart';

class HomeViewModel extends FutureViewModel<List<Post>> {
  final _logger = Logger();
  final _navigationService = locator<NavigationService>();
  final _groceryService = locator<GroceryService>();
  final _authService = locator<AuthenticationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _snackbarService = locator<SnackbarService>();
  final _postService = locator<PostService>();

  AppUser? get user => _authService.user;

  @override
  Future<List<Post>> futureToRun() async {
    // return _fetchGroceryLists();
    return _fetchPosts();
  }

  void initialize() {
    _logger.i('Init');
  }

  Future<List<Post>> _fetchPosts() async {
    final response = await _postService.fetchPostsDesc();

    if (response.error != null) {
      return [];
    }

    final list = response.data as List;
    return list.map((e) => Post.fromJson(e)).toList();
  }

  bool isLiked(Post post) {

    for (Liked liked in post.likes!) {
      if (liked.userId == user!.uid) {
        return true;
      }
    }
    return false;
  }

  Future<void> likePost(Post post) async {
    await _postService.likePost(postId: post.pid, userId: user!.uid);
  }

  Future<void> unlikePost(Post post) async {
    await _postService.unlikePost(postId: post.pid, userId: user!.uid);
  }

  Future<AppUser?> getUser(String id) async {
    return await _authService.fetchUser(id: id);
  }

  Future<List<Grocery>> _fetchGroceryLists() async {
    final response = await _groceryService.all();

    if (response.error != null) {
      return [];
    }

    final list = response.data as List;
    return list.map((e) => Grocery.fromJson(e)).toList();
  }

  void toCreatePostView() {
    _navigationService.navigateTo(Routes.createPostView);
  }

  // void toCreateGroceryView() {
  //   _navigationService.navigateTo(Routes.createGroceryView);
  // }


  void toSearchView() {
    _navigationService.navigateTo(Routes.searchView);
  }

  void toGroceryDetailView({required String id}) {
    _navigationService.navigateTo(
      Routes.groceryDetailView,
      arguments: GroceryDetailViewArguments(id: id),
    );
  }

  // Future<void> onLongPressedGroceryList(String id) async {
  //   try {
  //     final response = await _bottomSheetService.showBottomSheet(
  //       title: 'Confirm Delete',
  //       description: 'This action will be irreversible.',
  //     );
  //     _logger.i('${response?.confirmed}, ${response?.responseData}');
  //     if (response?.confirmed == false) {
  //       _logger.i('Not confirmed');
  //       return;
  //     }
  //
  //     await deleteGroceryList(id);
  //   } catch (e) {
  //     _snackbarService.showSnackbar(title: 'Error', message: e.toString());
  //   }
  // }

  // Future<void> deleteGroceryList(String id) async {
  //   try {
  //     setBusyForObject(id, true);
  //     final response = await _groceryService.delete(id);
  //
  //     if (response.error != null) {
  //       _logger.e(response.error?.message);
  //       return;
  //     }
  //
  //     _snackbarService.showSnackbar(
  //       title: 'Success',
  //       message: 'Grocery list deleted',
  //     );
  //     data?.removeWhere((element) => element.id == id);
  //     notifyListeners();
  //   } catch (e) {} finally {
  //     setBusyForObject('delete-grocery-list', false);
  //   }
  // }

  void signOut() {
    _authService.signOut();
    _navigationService.replaceWith(Routes.signInView);
  }

  Future<void> onRefresh() async {
    await futureToRun();
    notifyListeners();
  }
}