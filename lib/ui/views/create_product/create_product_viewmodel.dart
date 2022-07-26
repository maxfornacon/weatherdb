import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/app.router.dart';
import 'package:weather/datamodels/application_models.dart';
import 'package:weather/services/authentication_service.dart';
import 'package:weather/services/product_service.dart';

import 'create_product_view.form.dart';

class CreateProductViewModel extends FormViewModel {
  final _logger = Logger();
  final _productService = locator<ProductService>();
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();

  @override
  void setFormStatus() {}

  Future<void> createProduct() async {
    try {
      setBusy(true);
      final response = await _productService.create(
        ProductDto(
          name: nameValue ?? '',
          createdBy: _authService.user!.uid,
        ).toJson(),
      );

      if (response.error != null) {
        final errorMessage = response.error!.message;
        _logger.e(errorMessage);
        _snackbarService.showSnackbar(
          title: 'Error',
          message: errorMessage,
        );
        return;
      }

      _snackbarService.showSnackbar(
        title: 'Success',
        message: 'A product has been created',
      );

      _navigationService.replaceWith(
        Routes.productSelectionView,
        arguments: ProductSelectionViewArguments(groceryId: ''),
      );
    } catch (e) {
      _logger.e(e.toString());
    } finally {
      setBusy(false);
    }
  }
}