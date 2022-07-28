import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/app.router.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/ui/views/search/search_viewmodel.dart';

import '../../../datamodels/application_models.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> with TickerProviderStateMixin {
  late TabController tabController;
  late SearchViewModel searchViewModel;
  final _navigationService = locator<NavigationService>();

  @override
  void initState() {
    super.initState();
    searchViewModel = SearchViewModel();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() async {
      if(!tabController.indexIsChanging) {
        await searchViewModel.search(searchViewModel.searchController.text, tabController.index);
        print(searchViewModel.searchResults);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      viewModelBuilder: () => searchViewModel,
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            // The search area here
            title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: TextField(
                  controller: model.searchController,
                  cursorColor: Theme.of(context).primaryColor,
                  style: const TextStyle(color: Colors.black),
                  onSubmitted: (value) {
                    model.search(value, tabController.index);
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, color: Colors.black45,),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear, color: Colors.black45,),
                      onPressed: () {
                        model.searchController.clear();
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            bottom: TabBar(
              controller: tabController,
              labelColor: Colors.white,
              tabs: const [
                Tab(
                  text: 'Top',
                ),
                Tab(
                  text: 'Images',
                ),
                Tab(
                  text: 'Posts',
                ),
                Tab(
                  text: 'Users',
                ),
              ],
            ),
          ),
          body: _body(model: model, tabController: tabController),
        );
      },
    );
  }

  Widget _body({required SearchViewModel model, required TabController tabController}) {
    DateFormat dateFormat = DateFormat('dd.MM.yyyy - HH:mm');

    Widget _buildImageListTile(AppImage image) {
      return ListTile(
        leading: Image.network('https://hqtlidhkyxtztlthydry.supabase.co/storage/v1/object/public/${image.url}'),
        title: Text(image.title),
        subtitle: Text(dateFormat.format(image.createdAt).toString()),
      );
    }

    Widget _buildPostListTile(Post post) {
      return ListTile(
        onTap: () {
          _navigationService.navigateTo(
            Routes.postView,
            arguments: PostViewArguments(post: post),
          );
        },
        title: Text(post.text.length > 40 ? '${post.text.substring(0, 40)}...': post.text),
        subtitle: Text('${dateFormat.format(post.createdAt)} by ${post.postedBy
            .username}'),
      );
    }

    Widget _buildUserListTile(AppUser user) {
      return ListTile(
        leading: CircleAvatar(child: Text(user.username.substring(0, 1))),
        title: Text(user.username),
        onTap: () {
          model.toUserProfile(user);
        },
      );
    }

    return TabBarView(
      controller: tabController,
      children: [
        ListView.builder(
          itemCount: model.searchResults.length,
          itemBuilder: (context, index) {
            if (model.searchResults.isEmpty) {
              return Container();
            }
            if (model.searchResults[index] is AppImage) {
              AppImage image = model.searchResults[index];
              return _buildImageListTile(image);
            } else if (model.searchResults[index] is Post) {
              Post post = model.searchResults[index];
              return _buildPostListTile(post);
            } else if (model.searchResults[index] is AppUser) {
              AppUser user = model.searchResults[index];
              return _buildUserListTile(user);
            } else {
              return Container();
            }
          },
        ),
        ListView.builder(
          itemCount: model.searchResults.length,
          itemBuilder: (context, index) {
            if (model.searchResults.isEmpty) {
              return Container();
            }
            if (model.searchResults[index] is AppImage) {
              AppImage image = model.searchResults[index];
              return _buildImageListTile(image);
            }
            return Container();
          },
        ),
        ListView.builder(
          itemCount: model.searchResults.length,
          itemBuilder: (context, index) {
            if (model.searchResults.isEmpty) {
              return Container();
            }
            if (model.searchResults[index] is Post) {
              Post post =  model.searchResults[index];
              return _buildPostListTile(post);
            }
            return Container();
          },
        ),
        ListView.builder(
          itemCount: model.searchResults.length,
          itemBuilder: (context, index) {
            if (model.searchResults.isEmpty) {
              return Container();
            }
            if (model.searchResults[index] is AppUser) {
              AppUser user = model.searchResults[index];
              return _buildUserListTile(user);
            }
            return Container();
          },
        ),
      ],
    );
  }
}
