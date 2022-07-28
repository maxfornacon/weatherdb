import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supabase/supabase.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/app.router.dart';
import 'package:weather/datamodels/application_models.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/services/authentication_service.dart';
import 'package:weather/services/post_service.dart';

class HomeViewModel extends FutureViewModel<List<Post>> {
  final _logger = Logger();
  final _navigationService = locator<NavigationService>();
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

  void logout() {
    _authService.signOut();
    _navigationService.pushNamedAndRemoveUntil(Routes.signInView);
  }

  Future<List<Post>> _fetchPosts() async {
    final response = await _postService.fetchPostsOfFollowedDesc(user!.uid);

    if (response.error != null) {
      return [];
    }

    final list = response.data as List;

    List<Post> posts = [];

    try {
      for (Map<String, dynamic> map in list) {
        var user = map['users'];
        for (Map<String, dynamic> post in user['posts'] as List) {
          posts.add(Post.fromJson(post));
        }
      }
    } catch (e) {
      print(e);
    }
    return posts;
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
    _logger.i('Like post');
    await _postService.likePost(postId: post.pid, userId: user!.uid);
  }

  Future<void> unlikePost(Post post) async {
    await _postService.unlikePost(postId: post.pid, userId: user!.uid);
  }

  Future<AppUser?> getUser(String id) async {
    return await _authService.fetchUser(id: id);
  }

  void toCreatePostView() {
    _navigationService.navigateTo(Routes.createPostView);
  }

  void toUserProfileView({required AppUser user}) {
    _navigationService.navigateTo(
      Routes.userProfileView,
      arguments: UserProfileViewArguments(user: user),
    );
  }

  void toSearchView() {
    _navigationService.navigateTo(Routes.searchView);
  }

  void signOut() {
    _authService.signOut();
    _navigationService.replaceWith(Routes.signInView);
  }

  Future<void> onRefresh() async {
    await futureToRun();
    notifyListeners();
  }
}