import 'package:postgrest/postgrest.dart';
import 'package:weather/datamodels/application_models.dart';
import 'package:weather/services/supabase_service.dart';
import 'package:weather/app/supabase_api.dart';

class UserService extends SupabaseService<AppUser> {
  @override
  String tableName() {
    return "users";
  }

  /// Follow a user.
  Future<PostgrestResponse> followUser({required String ownId, required String userId}) async {
    return await supabase
        .from("follows")
        .insert(
          {
            "follower": ownId,
            "followed": userId,
          },
        )
        .execute();
  }

  /// Unfollows a user.
  Future<PostgrestResponse> unfollowUser({required String ownId, required String userId}) async {
    return await supabase
        .from("follows")
        .delete()
        .eq('follower', ownId)
        .eq('followed', userId)
        .execute();
  }

  /// Checks if the user is following the other user.
  Future<bool> isFollowingUser({required String ownId, required String userId}) async {
    final response = await supabase
        .from("follows")
        .select("*")
        .eq('follower', ownId)
        .eq('followed', userId)
        .execute();
    return response.data.isNotEmpty;
  }

}