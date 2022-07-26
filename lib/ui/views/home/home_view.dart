import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
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
            // const SizedBox(height: 30),
            // AppHPadding(
            //   child: Text(
            //     'Welcome back ${viewModel.user!.username}',
            //     style: const TextStyle(
            //       fontSize: 24,
            //     ),
            //   ),
            // ),
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

        bool postIsLiked = viewModel.isLiked(item);
        int likeCount = item.likes!.length;

        List<Widget> images = [];

        images.add(Container(
          color: const Color(0xFFF1F1F1),
          child: Center(
            child: Table(
              columnWidths: const {
                0: FlexColumnWidth(1.0),
                1: FixedColumnWidth(10.0),
                2: FlexColumnWidth(1.0),
              },
              children: [
                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Temperature:',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0
                        ),
                      )
                    ),
                    TableCell(child: Container()),
                    TableCell(
                      child: Text(
                        '${item.temperature}°C',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20.0
                        ),
                      )
                    )
                  ]
                ),

                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Air pressure:',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0
                        ),
                      )
                    ),
                    TableCell(child: Container()),
                    TableCell(
                      child: Text(
                        '${item.airPressure} hPa',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20.0
                        ),
                      )
                    )
                  ]
                ),
                TableRow(
                  children: [
                    const TableCell(
                      child: Text(
                        'Humidity:',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0
                        ),
                      )
                    ),
                    TableCell(child: Container()),
                    TableCell(
                      child: Text(
                        '${item.humidity}%',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 20.0
                        ),
                      )
                    )
                  ]
                ),
              ],
            ),
          ),
        ));

        for (AppImage image in item.images!) {
          images.add(Image.network(
            image.url,
            fit: BoxFit.cover,
          ));
        }

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
            ImageSlideshow(
              isLoop: true,
              height: 300,
              indicatorColor: Theme.of(context).primaryColor,
              initialPage: 1,
              children: images,
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
                      ExpandableText(
                        item.text,
                        expandText: 'show more',
                        collapseText: 'show less',
                        maxLines: 4,
                      ),
                    ],
                  );
                }
              ),
            ),
          ],
        );
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