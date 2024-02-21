class MemberLogin {
  final String account;
  final String memberStatus;
  final String referralCode;
  final String token;
  final bool isLoyaltySupport;
  final bool isPasswordExpired;
  final bool isTemporaryPin;

  MemberLogin({
    this.account = '',
    this.memberStatus = '',
    this.referralCode = '',
    this.token = '',
    this.isLoyaltySupport = false,
    this.isPasswordExpired = false,
    this.isTemporaryPin = false,
  });

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

  factory MemberLogin.fromMap(Map<String, dynamic> map) {
    return MemberLogin(
      account: map['account'] ?? '',
      memberStatus: map['memberStatus'] ?? '',
      referralCode: map['referralCode'] ?? '',
      isLoyaltySupport: map['isLoyaltySupport'] ?? false,
      isPasswordExpired: map['isPasswordExpired'] ?? false,
      isTemporaryPin: map['isTemporaryPin'] ?? false,
      token: map['token'] ?? '',
    );
  }
}
