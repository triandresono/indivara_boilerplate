part of 'login_worker.dart';

class LoginPage extends GetState<LoginBloc> with _Worker {
  static const page = '/login_page';
  LoginPage({super.key});

  @override
  void registerStateEffect(BuildContext currentContext) {
    (this).disposables.addAll(worker);
    super.registerStateEffect(currentContext);
  }

  @override
  Widget build(BuildContext context) {
    return GetStateBuilder<LoginBloc>(
      container: this,
      context: context,
      init: bloc,
      builder: (_) {
        return Scaffold();
      },
    );
  }
}
