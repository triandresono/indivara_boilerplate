import 'package:indivara_boilerplate/data/response/base/base_response.dart';
import 'package:indivara_boilerplate/data/response/base/status_response.dart';

class MemberLoginResponse extends BaseResponse {
  final String account;
  final String memberStatus;
  final String referralCode;
  final String token;
  final bool isLoyaltySupport;
  final bool isPasswordExpired;
  final bool isTemporaryPin;

  MemberLoginResponse({
    StatusResponse? statusResponse,
    this.account = '',
    this.memberStatus = '',
    this.referralCode = '',
    this.token = '',
    this.isLoyaltySupport = false,
    this.isPasswordExpired = false,
    this.isTemporaryPin = false,
  }) : super(statusResponse: statusResponse);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': account,
      'memberStatus': memberStatus,
      'referralCode': referralCode,
      'token': token,
      'isLoyaltySupport': isLoyaltySupport,
      'isPasswordExpired': isPasswordExpired,
      'isTemporaryPin': isTemporaryPin,
    };
  }

  factory MemberLoginResponse.fromMap(Map<String, dynamic> map) {
    return MemberLoginResponse(
      account: map['account'] ?? '',
      memberStatus: map['memberStatus'] ?? '',
      referralCode: map['referralCode'] ?? '',
      isLoyaltySupport: map['isLoyaltySupport'] ?? false,
      isPasswordExpired: map['isPasswordExpired'] ?? false,
      isTemporaryPin: map['isTemporaryPin'] ?? false,
      token: map['token'] ?? '',
      statusResponse: StatusResponse.fromMap(map),
    );
  }
}
