import 'package:postgrest/postgrest.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/services/supabase_service.dart';

class ImageService extends SupabaseService<AppImage> {
  @override
  String tableName() {
    return "images";
  }

  // Future<PostgrestResponse> fetchPostsDesc() async {
  //   return await supabase
  //       .from("posts")
  //       .select("*, users!posts_posted_by_fkey(*), liked(*, users(*)), images(*)")
  //       .order('created_at', ascending: false)
  //       .execute();
  // }

}