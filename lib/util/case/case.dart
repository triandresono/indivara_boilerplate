import 'package:indivara_boilerplate/data/response/base/status_response.dart';

class Case<T> {
  final T? data;
  final StatusResponse failure;

  Case({
    this.data,
    StatusResponse? failure,
  }) : failure = failure ?? StatusResponse();
}

class InitialCase<T> extends Case<T> {}

class LoadingCase<T> extends Case<T> {}

class InitLoadingCase<T> extends Case<T> {}

class ExceptionCase<T> extends Case<T> {
  ExceptionCase(Exception e) : super(failure: StatusResponse.exception(e));
}

class ErrorCase<T> extends Case<T> {
  ErrorCase(StatusResponse failure) : super(failure: failure);
}

class LoadedCase<T> extends Case<T> {
  LoadedCase(T result) : super(data: result);
}

///USED FOR NON GENERAL STATE
class FailedCase<T> extends Case<T> {
  FailedCase(T result) : super(data: result);
}
