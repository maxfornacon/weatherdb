
import 'package:universal_io/io.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uuid/uuid.dart';
import 'package:weather/app/app.locator.dart';
import 'package:weather/app/app.router.dart';
import 'package:weather/app/supabase_api.dart';
import 'package:weather/datamodels/post/post.dart';
import 'package:weather/services/authentication_service.dart';
import 'package:weather/services/image_service.dart';
import 'package:weather/services/post_service.dart';

import 'create_post_view.form.dart';

class CreatePostViewModel extends FormViewModel {
  final _logger = Logger();
  final _postService = locator<PostService>();
  final _imageService = locator<ImageService>();
  final _authService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();

  List<Map<String, dynamic>> images = [];

  @override
  void setFormStatus() {}

  @override
  dispose() {
    super.dispose();
    images.clear();
  }

  Future<XFile?> pickImageGallery() async {
    final ImagePicker picker = ImagePicker();
    // Pick an image
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    return image;
  }

  Future<void> createPost() async {
    try {
      setBusy(true);

      for (Map<String, dynamic> image in images) {
        final response = await uploadImage(
          image['image'],
        );
        image['storage_path'] = response;
      }

      final response = await _postService.create(
        PostDto(
          text: textValue ?? '',
          latitude: double.parse(latitudeValue!),
          longitude: double.parse(longitudeValue!),
          temperature: double.parse(temperatureValue!),
          airPressure: double.parse(airPressureValue!),
          humidity: double.parse(humidityValue!),
          postedBy: _authService.user!.uid,
          createdAt: DateTime.now(),
        ).toJson(),
      );

      int pid = response.data[0]['pid'];

      for (Map<String, dynamic> image in images) {
        await _imageService.create(
          AppImageDto(
            createdAt: DateTime.now(),
            title: image['title'] ?? '',
            url: image['storage_path'],
            postId: pid,
          ).toJson(),
        );
      }

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

  Future<String?> uploadImage(XFile image) async {
    try {
      final storageResponse = await supabase
          .storage
          .from('images')
          .upload('${Uuid().v4()}.${image.name.split('.').last}', File(image.path));
      if (storageResponse.error != null) {
        final errorMessage = storageResponse.error!.message;
        _logger.e(errorMessage);
        _snackbarService.showSnackbar(
          title: 'Error',
          message: errorMessage,
        );
        return null;
      }

      return storageResponse.data;
    } catch (e) {
      _logger.e(e.toString());
    }
    return null;
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
