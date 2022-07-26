import 'package:postgrest/postgrest.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/services/supabase_service.dart';
import 'package:weather/app/supabase_api.dart';

class PostService extends SupabaseService<Post> {
  @override
  String tableName() {
    return "posts";
  }

  Future<PostgrestResponse> fetchPostsDesc() async {
    return await supabase
        .from("posts")
        .select("*, users!posts_posted_by_fkey(*)")
        .order('created_at', ascending: false)
        .execute();
  }
}