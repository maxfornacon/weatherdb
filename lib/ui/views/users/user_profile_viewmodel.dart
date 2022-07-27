import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/services/authentication_service.dart';
import 'package:weather/services/user_service.dart';

class UserProfileViewModel extends ChangeNotifier{
  final _logger = Logger();
  final _navigationServce = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();
  final _userService = locator<UserService>();
  final _authService = locator<AuthenticationService>();

  bool initializing = true;
  bool following = false;

  Future<void> initialize(String userId) async {
    initializing = false;
    following = await checkIfFollows(userId);
    notifyListeners();
  }

  /// Check if current user is the same as the userId passed in.
  bool isCurrentUser(String userId) {
    return _authService.user!.uid == userId;
  }

  Future<bool> checkIfFollows(String userId) async {
    return await _userService.isFollowingUser(ownId: _authService.user!.uid, userId: userId);
  }

  Future<void> followUser(String userId) async {
    await _userService.followUser(ownId: _authService.user!.uid, userId: userId);
    following = true;
    notifyListeners();
  }

  Future<void> unfollowUser(String userId) async {
    await _userService.unfollowUser(ownId: _authService.user!.uid, userId: userId);
    following = false;
    notifyListeners();
  }
}