import 'package:postgrest/postgrest.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/supabase_api.dart';
import 'package:weather/datamodels/application_models.dart';
import 'package:weather/services/authentication_service.dart';
import 'package:weather/services/supabase_service.dart';

class ProductService extends SupabaseService<Product> {
  final _authService = locator<AuthenticationService>();

  @override
  String tableName() {
    return "products";
  }

  Future<PostgrestResponse> fetchProducts() async {
    return await supabase
        .from("products")
        .select("*")
        .eq('created_by', _authService.user!.uid)
        .execute();
  }
}