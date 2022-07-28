import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/ui/widgets/dumb_widgets/app_padding.dart';
import 'package:weather/ui/widgets/post_widget.dart';

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
        leading: IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {
            viewModel.logout();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: viewModel.toSearchView,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.toCreatePostView,
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
            const SizedBox(height: 15),
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

        return PostWidget(
          post: item,
        );

      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
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