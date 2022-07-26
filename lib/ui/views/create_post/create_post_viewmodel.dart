import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/app.router.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/services/authentication_service.dart';
import 'package:weather/services/post_service.dart';

import 'create_post_view.form.dart';

class CreatePostViewModel extends FormViewModel {
  final _logger = Logger();
  final _postService = locator<PostService>();
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();

  @override
  void setFormStatus() {}

  Future<void> createPost() async {
    try {
      setBusy(true);
      final response = await _postService.create(
        PostDto(
          text: textValue ?? '',
          latitude: double.parse(latitudeValue!) ?? 0.0,
          longitude: double.parse(longitudeValue!) ?? 0.0,
          temperature: double.parse(temperatureValue!) ?? 0.0,
          airPressure: double.parse(airPressureValue!) ?? 0.0,
          humidity: double.parse(humidityValue!) ?? 0.0,
          postedBy: _authService.user!.uid,
          createdAt: DateTime.now(),
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
        message: 'A post has been created',
      );

      _navigationService.replaceWith(
        Routes.homeView,
      );
    } catch (e) {
      _logger.e(e.toString());
    } finally {
      setBusy(false);
    }
  }

  // Future<void> createProduct() async {
  //   try {
  //     setBusy(true);
  //     final response = await _productService.create(
  //       ProductDto(
  //         name: textValue ?? '',
  //         createdBy: _authService.user!.uid,
  //       ).toJson(),
  //     );
  //
  //     if (response.error != null) {
  //       final errorMessage = response.error!.message;
  //       _logger.e(errorMessage);
  //       _snackbarService.showSnackbar(
  //         title: 'Error',
  //         message: errorMessage,
  //       );
  //       return;
  //     }
  //
  //     _snackbarService.showSnackbar(
  //       title: 'Success',
  //       message: 'A product has been created',
  //     );
  //
  //     _navigationService.replaceWith(
  //       Routes.productSelectionView,
  //       arguments: ProductSelectionViewArguments(groceryId: ''),
  //     );
  //   } catch (e) {
  //     _logger.e(e.toString());
  //   } finally {
  //     setBusy(false);
  //   }
  // }
}
