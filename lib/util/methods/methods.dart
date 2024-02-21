import 'dart:async';

import 'package:get/get.dart';
import 'package:indivara_boilerplate/util/case/case.dart';
import 'package:indivara_boilerplate/util/extension/extension.dart';

class Methods {
  static Worker listen<T>({
    required RxInterface<Case<T>> listener,
    required WorkerCallback<Case<T>> callback,
    bool withLoading = true,
  }) {
    StreamSubscription sub = listener.listen(
      (event) {
        if (withLoading) {
          if (event is LoadingCase) {
            Get.closeLoading();
            Get.showLoading();
          } else if (event is LoadedCase || event is ErrorCase) {
            Get.closeLoading();
          }
        }
        callback(event);
      },
    );
    return Worker(sub.cancel, '[ever]');
  }
}
