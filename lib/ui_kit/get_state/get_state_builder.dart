import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:indivara_boilerplate/ui_kit/get_state/get_state.dart';

class GetStateBuilder<T extends GetxController> extends GetBuilder<T> {
  GetStateBuilder({
    Key? key,
    T? init,
    isGlobal = false,
    required GetState container,
    required BuildContext context,
    required Widget Function(T) builder,
  }) : super(
          key: key,
          init: init,
          global: isGlobal,
          dispose: container.onDispose,
          initState: (GetBuilderState<T> controller) {
            container.registerStateEffect(context);
            WidgetsBinding.instance.endOfFrame
                .then((_) => container.onReady(controller));
          },
          didChangeDependencies: container.onDidChangeDependencies,
          didUpdateWidget: container.onDidUpdateWidget,
          builder: builder,
        );
}
