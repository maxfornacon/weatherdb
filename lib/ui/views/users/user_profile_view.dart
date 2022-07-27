import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:weather/datamodels/application_models.dart';
import 'package:weather/ui/views/users/user_profile_viewmodel.dart';
import 'package:weather/ui/widgets/dumb_widgets/app_button.dart';

class UserProfileView extends StatelessWidget {
  final AppUser user;

  const UserProfileView({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => UserProfileViewModel(),
      onModelReady: (UserProfileViewModel viewModel) async {
        await viewModel.initialize(user.uid);
      },
      builder: (context, UserProfileViewModel viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('User Profile'),
          ),
          body: Column(
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                child: Text(
                  user.username.substring(0, 1),
                  style: const TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                user.username,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 15),
              if (!viewModel.isCurrentUser(user.uid)) AppButton(
                label: viewModel.following ? 'unfollow' : 'follow',
                fullWidth: false,
                onPressed: () {
                  if (viewModel.following) {
                    viewModel.unfollowUser(user.uid);
                  } else {
                    viewModel.followUser(user.uid);
                  }
                },
              ),
              Row(
                children: const [
                ],
              )
            ],
          ),
        );
      }
    );
  }
}
