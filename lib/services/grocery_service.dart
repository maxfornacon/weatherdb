import 'package:postgrest/postgrest.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/supabase_api.dart';
import 'package:weather/datamodels/application_models.dart';
import 'package:weather/services/supabase_service.dart';

import 'authentication_service.dart';

class GroceryService extends SupabaseService<Grocery> {
  final _authService = locator<AuthenticationService>();

  @override
  String tableName() {
    return "groceries";
  }

  Future<PostgrestResponse> fetchGroceryList({required String id}) async {
    return await supabase
        .from("groceries")
        .select("*, groceries_products(*, products(*) )")
        .eq('id', id)
        .eq('created_by', _authService.user!.uid)
        .single()
        .execute();
  }

  Future<PostgrestResponse> addProductsToList({
    required String id,
    required List<Product?> products,
  }) async {
    return await supabase
        .from("groceries_products")
        .insert(
      products.map((e) {
        return GroceryProductDto(
          groceryId: id,
          productId: e!.id,
        ).toJson();
      }).toList(),
    )
        .execute();
  }

  Future<PostgrestResponse> markProductChecked(
      {required GroceryProduct payload}) async {
    return await supabase
        .from("groceries_products")
        .update(payload.toJson())
        .eq('id', payload.id)
        .execute();
  }

  Future<PostgrestResponse> removeProduct({required String id}) async {
    return await supabase
        .from("groceries_products")
        .delete()
        .eq('id', id)
        .execute();
  }
}