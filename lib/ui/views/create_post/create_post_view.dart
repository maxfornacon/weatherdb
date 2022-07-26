import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:weather/ui/widgets/dumb_widgets/app_button.dart';
import 'package:weather/ui/widgets/dumb_widgets/app_padding.dart';
import 'package:weather/ui/widgets/dumb_widgets/app_text_form_field.dart';

import 'create_post_viewmodel.dart';
import 'create_post_view.form.dart';

@FormView(
  fields: [
    FormTextField(name: 'text'),
    FormTextField(name: 'longitude'),
    FormTextField(name: 'latitude'),
    FormTextField(name: 'temperature'),
    FormTextField(name: 'airPressure'),
    FormTextField(name: 'humidity'),
  ],
)
class CreatePostView extends ViewModelBuilderWidget<CreatePostViewModel>
    with $CreatePostView {
  @override
  void onViewModelReady(CreatePostViewModel viewModel) {
    super.onViewModelReady(viewModel);

    listenToFormUpdated(viewModel);
  }

  @override
  Widget builder(
      BuildContext context,
      CreatePostViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: AppHPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              AppButton(
                label: 'Add Image',
                fullWidth: false,
                onPressed: () {
                  viewModel.pickImageGallery().then(
                    (image) async {
                      List<dynamic>? returns = await showDialog(
                        context: context,
                        builder: (context) {
                          TextEditingController imageTitleController =
                              TextEditingController();
                          return AlertDialog(
                            title: const Text('Image'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.file(File(image!.path)),
                                const SizedBox(height: 15),
                                AppTextFormField(
                                  controller: imageTitleController,
                                  focusNode: FocusNode(),
                                  labelText: 'Image title',
                                ),
                              ],
                            ),
                            actions: [
                              FlatButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context, [image, imageTitleController.text.trim()]),
                              ),
                            ],
                          );
                        }
                      );
                      if (returns != null) {
                        viewModel.images.add({
                          'image': image,
                          'title': returns.elementAt(1) ?? '',
                        });
                      }
                      viewModel.notifyListeners();
                    }
                  );
                },
              ),
              const SizedBox(height: 15),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: viewModel.images.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.all(2),
                    leading: Container(
                      color: Colors.white,
                      width: 80,
                      child: Image.file(File(viewModel.images.elementAt(index)['image'].path))
                    ),
                    title: Text(viewModel.images.elementAt(index)['title']),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        viewModel.images.removeAt(index);
                        viewModel.notifyListeners();
                      },
                    ),
                  );
                },
              ),
              AppTextFormField(
                controller: textController,
                focusNode: textFocusNode,
                labelText: 'Text',
                maxLines: 5,
                minLines: 3,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: AppTextFormField(
                      controller: longitudeController,
                      focusNode: longitudeFocusNode,
                      labelText: 'Longitude',
                    ),
                  ),
                  const SizedBox(width: 15),
                  Flexible(
                    child: AppTextFormField(
                      controller: latitudeController,
                      focusNode: latitudeFocusNode,
                      labelText: 'Latitude',
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              AppTextFormField(
                controller: temperatureController,
                focusNode: temperatureFocusNode,
                labelText: 'Temperature',
              ),
              const SizedBox(height: 15),
              AppTextFormField(
                controller: airPressureController,
                focusNode: airPressureFocusNode,
                labelText: 'Air Pressure',
              ),
              const SizedBox(height: 15),
              AppTextFormField(
                controller: humidityController,
                focusNode: humidityFocusNode,
                labelText: 'Humidity',
              ),
              const SizedBox(height: 15),
              AppButton(
                label: 'Create',
                onPressed: viewModel.createPost,
                loading: viewModel.isBusy,
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CreatePostViewModel viewModelBuilder(BuildContext context) {
    return CreatePostViewModel();
  }
}
