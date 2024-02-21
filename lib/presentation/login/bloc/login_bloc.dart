part of 'login_extender.dart';

class LoginBloc extends GetxController with _Extender {
  final LoginUsecase loginUsecase;
  LoginBloc({required this.loginUsecase});

  @override
  void onClose() {
    _dispose();
    super.onClose();
  }

  void login() async {
    loginCase(LoadingCase());
    final response = await loginUsecase.login({
      "gcmId": "string",
      "pin": passwordCo.text,
      "username": phoneCo.text,
    });
    response.fold(
      (failure) => loginCase(ErrorCase(failure)),
      (result) => loginCase(LoadedCase(result)),
    );
  }
}
