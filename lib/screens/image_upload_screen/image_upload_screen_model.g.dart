// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload_screen_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImageUploadScreenModel on _ImageUploadScreenModel, Store {
  late final _$imageBytesAtom =
      Atom(name: '_ImageUploadScreenModel.imageBytes', context: context);

  @override
  List<int> get imageBytes {
    _$imageBytesAtom.reportRead();
    return super.imageBytes;
  }

  @override
  set imageBytes(List<int> value) {
    _$imageBytesAtom.reportWrite(value, super.imageBytes, () {
      super.imageBytes = value;
    });
  }

  late final _$isImageDisplayedAtom =
      Atom(name: '_ImageUploadScreenModel.isImageDisplayed', context: context);

  @override
  bool get isImageDisplayed {
    _$isImageDisplayedAtom.reportRead();
    return super.isImageDisplayed;
  }

  @override
  set isImageDisplayed(bool value) {
    _$isImageDisplayedAtom.reportWrite(value, super.isImageDisplayed, () {
      super.isImageDisplayed = value;
    });
  }

  late final _$_ImageUploadScreenModelActionController =
      ActionController(name: '_ImageUploadScreenModel', context: context);

  @override
  void setImageDisplayed(bool isImageDisplayed) {
    final _$actionInfo = _$_ImageUploadScreenModelActionController.startAction(
        name: '_ImageUploadScreenModel.setImageDisplayed');
    try {
      return super.setImageDisplayed(isImageDisplayed);
    } finally {
      _$_ImageUploadScreenModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setImageBytes(List<int> imageBytes) {
    final _$actionInfo = _$_ImageUploadScreenModelActionController.startAction(
        name: '_ImageUploadScreenModel.setImageBytes');
    try {
      return super.setImageBytes(imageBytes);
    } finally {
      _$_ImageUploadScreenModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageBytes: ${imageBytes},
isImageDisplayed: ${isImageDisplayed}
    ''';
  }
}
