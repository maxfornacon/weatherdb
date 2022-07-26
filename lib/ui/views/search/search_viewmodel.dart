import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/app.router.dart';
import 'package:weather/datamodels/application_models.dart';
import 'package:weather/services/grocery_service.dart';
import 'package:weather/services/product_service.dart';

class SearchViewModel extends ChangeNotifier {
  final _logger = Logger();
  final _productService = locator<ProductService>();
  final _navigationServce = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();
  final _groceryService = locator<GroceryService>();

}