part of '../api.dart';

class _IdpAuth with Api {
  const _IdpAuth();
  String get _head => '$_base/idp$_api$_v/auth';
  String get login => '$_head/login';
}
