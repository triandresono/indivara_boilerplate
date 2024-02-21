import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'extensions/get_extension.dart';

extension GetExtension on GetInterface {
  void lazy<T>(T object) {
    (this).lazyPut<T>(() => object, fenix: true);
  }

  void closeLoading() {
    while (((this).isDialogOpen ?? false)) {
      (this).back();
    }
  }

  void showLoading() {
    (this).dialog(
      Dialog(
        elevation: 0.0,
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.grey.withOpacity(0.2),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
          child: const Center(child: CircularProgressIndicator()),
        ),
      ),
      barrierDismissible: false,
    );
  }

  Future<dynamic> error({
    String title = "Sorry.",
    String description = '',
    String textButton = "Okay",
    bool dismissable = true,
  }) async {
    final result = await Get.dialog(
      AlertDialog(
        title: Text(title),
        content: Text(description),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text(textButton),
          ),
        ],
      ),
    );
    return result;
  }
}
