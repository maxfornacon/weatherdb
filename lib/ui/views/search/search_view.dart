import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
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

  @override
  void initState() {
    super.initState();
    searchViewModel = SearchViewModel();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
        if(tabController.indexIsChanging) {
          searchViewModel.search(searchViewModel.searchController.text, tabController.index);
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
    print('build');
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
              return ListTile(
                leading: Image.network('https://hqtlidhkyxtztlthydry.supabase.co/storage/v1/object/public/${image.url}'),
                title: Text(image.title),
                subtitle: Text(dateFormat.format(image.createdAt).toString()),
              );
            } else if (model.searchResults[index] is Post) {
              Post post = model.searchResults[index];
              return ListTile(
                title: Text(post.text),
                subtitle: Text(post.humidity.toString()),
              );
            } else {
              return Builder(
                builder: (context) {
                  model.searchUsers(model.searchController.text.trim());
                  return Container();
                }
              );
            }
          },
        ),
        Container(),
        Builder(
          builder: (context) {
            return ListView.builder(
              itemCount: model.searchResults.length,
              itemBuilder: (context, index) {
                if (model.searchResults[index] is AppUser) {
                  AppUser user = model.searchResults[index];
                  return ListTile(
                    title: Text(user.username),
                  );
                }
                return Container();
              },
            );
          }
        ),
      ],
    );
  }
}
