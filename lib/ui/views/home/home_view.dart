import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/ui/widgets/dumb_widgets/app_bold_text.dart';
import 'package:weather/ui/widgets/dumb_widgets/app_padding.dart';

import 'home_viewmodel.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    super.onViewModelReady(viewModel);

    viewModel.initialize();
  }

  @override
  Widget builder(
      BuildContext context,
      HomeViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weathr'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.toCreateGroceryView,
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: viewModel.futureToRun,
        child: _Body(viewModel: viewModel),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    return HomeViewModel();
  }
}

class _Body extends StatelessWidget {
  final HomeViewModel viewModel;

  const _Body({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (viewModel.isBusy) {
      return const Center(
        child: CircularProgressIndicator()
      );
    }

    return RefreshIndicator(
      onRefresh: viewModel.onRefresh,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            AppHPadding(
              child: Text(
                'Welcome back ${viewModel.user!.username}',
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 30),
            if (viewModel.data!.isEmpty)
              AppHPadding(child: const _NoData())
            else
              _list()
          ],
        ),
      ),
    );
  }

  ListView _list() {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: viewModel.data!.length,
      itemBuilder: (context, index) {
        Post item = viewModel.data![index];

        bool postIsLiked = viewModel.isLiked(item);
        int likeCount = item.likes!.length;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Text(item.postedBy.username.substring(0, 1)),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBoldText(
                        item.postedBy.username,
                      ),
                      Text('${item.latitude}, ${item.longitude}'),
                    ],
                  ),
                ],
              )
            ),
            const Placeholder(
              fallbackHeight: 350,
              fallbackWidth: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: StatefulBuilder(
                builder: (context, StateSetter setLikedState) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () async {
                            if (postIsLiked) {
                              await viewModel.unlikePost(item);
                              setLikedState(() {
                                postIsLiked = false;
                                likeCount--;
                              });
                            } else {
                              await viewModel.likePost(item);
                              setLikedState(() {
                                postIsLiked = true;
                                likeCount++;
                              });
                            }
                          },
                          child: postIsLiked ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border)
                        ),
                      ),
                      const SizedBox(height: 5),
                      AppBoldText('$likeCount likes'),
                      Text(item.text),
                    ],
                  );
                }
              ),
            ),
          ],
        );
        // return AppHPadding(
        //   child: ListTile(
        //     title: Text(item.name),
        //     subtitle: const Text('Grocery List'),
        //     isThreeLine: true,
        //     trailing: viewModel.busy(item.pid)
        //         ? const CircularProgressIndicator()
        //         : const SizedBox.shrink(),
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(5),
        //     ),
        //     onTap: () => viewModel.toGroceryDetailView(
        //       id: item.id,
        //     ),
        //     onLongPress: () => viewModel.onLongPressedGroceryList(item.id),
        //   ),
        // );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 15);
      },
    );
  }
}

class _NoData extends StatelessWidget {
  const _NoData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('No data');
  }
}