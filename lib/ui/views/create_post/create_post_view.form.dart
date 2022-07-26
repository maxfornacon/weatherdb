// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs,  constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String TextValueKey = 'text';
const String LongitudeValueKey = 'longitude';
const String LatitudeValueKey = 'latitude';
const String TemperatureValueKey = 'temperature';
const String AirPressureValueKey = 'airPressure';
const String HumidityValueKey = 'humidity';

final Map<String, TextEditingController> _CreatePostViewTextEditingControllers =
    {};

final Map<String, FocusNode> _CreatePostViewFocusNodes = {};

final Map<String, String? Function(String?)?> _CreatePostViewTextValidations = {
  TextValueKey: null,
  LongitudeValueKey: null,
  LatitudeValueKey: null,
  TemperatureValueKey: null,
  AirPressureValueKey: null,
  HumidityValueKey: null,
};

mixin $CreatePostView on StatelessWidget {
  TextEditingController get textController =>
      _getFormTextEditingController(TextValueKey);
  TextEditingController get longitudeController =>
      _getFormTextEditingController(LongitudeValueKey);
  TextEditingController get latitudeController =>
      _getFormTextEditingController(LatitudeValueKey);
  TextEditingController get temperatureController =>
      _getFormTextEditingController(TemperatureValueKey);
  TextEditingController get airPressureController =>
      _getFormTextEditingController(AirPressureValueKey);
  TextEditingController get humidityController =>
      _getFormTextEditingController(HumidityValueKey);
  FocusNode get textFocusNode => _getFormFocusNode(TextValueKey);
  FocusNode get longitudeFocusNode => _getFormFocusNode(LongitudeValueKey);
  FocusNode get latitudeFocusNode => _getFormFocusNode(LatitudeValueKey);
  FocusNode get temperatureFocusNode => _getFormFocusNode(TemperatureValueKey);
  FocusNode get airPressureFocusNode => _getFormFocusNode(AirPressureValueKey);
  FocusNode get humidityFocusNode => _getFormFocusNode(HumidityValueKey);

  TextEditingController _getFormTextEditingController(String key,
      {String? initialValue}) {
    if (_CreatePostViewTextEditingControllers.containsKey(key)) {
      return _CreatePostViewTextEditingControllers[key]!;
    }
    _CreatePostViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _CreatePostViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_CreatePostViewFocusNodes.containsKey(key)) {
      return _CreatePostViewFocusNodes[key]!;
    }
    _CreatePostViewFocusNodes[key] = FocusNode();
    return _CreatePostViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    textController.addListener(() => _updateFormData(model));
    longitudeController.addListener(() => _updateFormData(model));
    latitudeController.addListener(() => _updateFormData(model));
    temperatureController.addListener(() => _updateFormData(model));
    airPressureController.addListener(() => _updateFormData(model));
    humidityController.addListener(() => _updateFormData(model));
  }

  final bool _autoTextFieldValidation = true;
  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          TextValueKey: textController.text,
          LongitudeValueKey: longitudeController.text,
          LatitudeValueKey: latitudeController.text,
          TemperatureValueKey: temperatureController.text,
          AirPressureValueKey: airPressureController.text,
          HumidityValueKey: humidityController.text,
        }),
    );
    if (_autoTextFieldValidation || forceValidate) {
      _updateValidationData(model);
    }
  }

  /// Updates the fieldsValidationMessages on the FormViewModel
  void _updateValidationData(FormViewModel model) =>
      model.setValidationMessages({
        TextValueKey: _getValidationMessage(TextValueKey),
        LongitudeValueKey: _getValidationMessage(LongitudeValueKey),
        LatitudeValueKey: _getValidationMessage(LatitudeValueKey),
        TemperatureValueKey: _getValidationMessage(TemperatureValueKey),
        AirPressureValueKey: _getValidationMessage(AirPressureValueKey),
        HumidityValueKey: _getValidationMessage(HumidityValueKey),
      });

  /// Returns the validation message for the given key
  String? _getValidationMessage(String key) {
    final validatorForKey = _CreatePostViewTextValidations[key];
    if (validatorForKey == null) return null;
    String? validationMessageForKey =
        validatorForKey(_CreatePostViewTextEditingControllers[key]!.text);
    return validationMessageForKey;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _CreatePostViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _CreatePostViewFocusNodes.values) {
      focusNode.dispose();
    }

    _CreatePostViewTextEditingControllers.clear();
    _CreatePostViewFocusNodes.clear();
  }
}

extension ValueProperties on FormViewModel {
  bool get isFormValid =>
      this.fieldsValidationMessages.values.every((element) => element == null);
  String? get textValue => this.formValueMap[TextValueKey] as String?;
  String? get longitudeValue => this.formValueMap[LongitudeValueKey] as String?;
  String? get latitudeValue => this.formValueMap[LatitudeValueKey] as String?;
  String? get temperatureValue =>
      this.formValueMap[TemperatureValueKey] as String?;
  String? get airPressureValue =>
      this.formValueMap[AirPressureValueKey] as String?;
  String? get humidityValue => this.formValueMap[HumidityValueKey] as String?;

  bool get hasText => this.formValueMap.containsKey(TextValueKey);
  bool get hasLongitude => this.formValueMap.containsKey(LongitudeValueKey);
  bool get hasLatitude => this.formValueMap.containsKey(LatitudeValueKey);
  bool get hasTemperature => this.formValueMap.containsKey(TemperatureValueKey);
  bool get hasAirPressure => this.formValueMap.containsKey(AirPressureValueKey);
  bool get hasHumidity => this.formValueMap.containsKey(HumidityValueKey);

  bool get hasTextValidationMessage =>
      this.fieldsValidationMessages[TextValueKey]?.isNotEmpty ?? false;
  bool get hasLongitudeValidationMessage =>
      this.fieldsValidationMessages[LongitudeValueKey]?.isNotEmpty ?? false;
  bool get hasLatitudeValidationMessage =>
      this.fieldsValidationMessages[LatitudeValueKey]?.isNotEmpty ?? false;
  bool get hasTemperatureValidationMessage =>
      this.fieldsValidationMessages[TemperatureValueKey]?.isNotEmpty ?? false;
  bool get hasAirPressureValidationMessage =>
      this.fieldsValidationMessages[AirPressureValueKey]?.isNotEmpty ?? false;
  bool get hasHumidityValidationMessage =>
      this.fieldsValidationMessages[HumidityValueKey]?.isNotEmpty ?? false;

  String? get textValidationMessage =>
      this.fieldsValidationMessages[TextValueKey];
  String? get longitudeValidationMessage =>
      this.fieldsValidationMessages[LongitudeValueKey];
  String? get latitudeValidationMessage =>
      this.fieldsValidationMessages[LatitudeValueKey];
  String? get temperatureValidationMessage =>
      this.fieldsValidationMessages[TemperatureValueKey];
  String? get airPressureValidationMessage =>
      this.fieldsValidationMessages[AirPressureValueKey];
  String? get humidityValidationMessage =>
      this.fieldsValidationMessages[HumidityValueKey];
}

extension Methods on FormViewModel {
  setTextValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TextValueKey] = validationMessage;
  setLongitudeValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LongitudeValueKey] = validationMessage;
  setLatitudeValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LatitudeValueKey] = validationMessage;
  setTemperatureValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TemperatureValueKey] = validationMessage;
  setAirPressureValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[AirPressureValueKey] = validationMessage;
  setHumidityValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[HumidityValueKey] = validationMessage;
}
