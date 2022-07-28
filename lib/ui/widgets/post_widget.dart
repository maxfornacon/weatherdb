import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/app.router.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/ui/views/home/home_viewmodel.dart';

import 'dumb_widgets/app_bold_text.dart';

class PostWidget extends StatelessWidget {

  final Post post;

  const PostWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool postIsLiked = HomeViewModel().isLiked(post);
    int likeCount = post.likes!.length;

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
                        '${post.temperature}°C',
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
                        '${post.airPressure} hPa',
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
                        '${post.humidity}%',
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

    for (AppImage image in post.images!) {
      images.add(
          Stack(
            children: [
              Center(
                child: Image.network(
                  'https://hqtlidhkyxtztlthydry.supabase.co/storage/v1/object/public/${image.url}',
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              ),
              /// Centered label showing the title of image
              Positioned(
                bottom: 20.0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.black.withOpacity(0.5),
                  child: Text(
                    image.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
            ],
          )
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                final _navigationService = locator<NavigationService>();
                _navigationService.navigateTo(
                  Routes.userProfileView,
                  arguments: UserProfileViewArguments(user: post.postedBy)
                );
              },
              child: Row(
                children: [
                  CircleAvatar(
                    child: Text(post.postedBy.username.substring(0, 1)),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBoldText(
                        post.postedBy.username,
                      ),
                      Text('${post.latitude}, ${post.longitude}'),
                    ],
                  ),
                ],
              ),
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
                              await HomeViewModel().unlikePost(post);
                              setLikedState(() {
                                postIsLiked = false;
                                likeCount--;
                              });
                            } else {
                              await HomeViewModel().likePost(post);
                              setLikedState(() {
                                postIsLiked = true;
                                likeCount++;
                              });
                            }
                          },
                          child: Row(
                            children: [
                              postIsLiked
                                  ? Icon(
                                Icons.favorite,
                                color: Theme.of(context).primaryColor,
                              ) : const Icon(Icons.favorite_border),
                              const SizedBox(width: 10),
                              AppBoldText('$likeCount likes'),
                            ],
                          )
                      ),
                    ),
                    const SizedBox(height: 5),
                    ExpandableText(
                      post.text,
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

  }
}
