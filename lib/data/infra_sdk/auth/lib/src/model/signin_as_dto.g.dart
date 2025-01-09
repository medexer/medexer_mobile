// @dart=3.5
// @dart=3.5
// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'signin_as_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SigninAsDTOAccountTypeEnum _$signinAsDTOAccountTypeEnum_donationCenter =
    const SigninAsDTOAccountTypeEnum._('donationCenter');
const SigninAsDTOAccountTypeEnum _$signinAsDTOAccountTypeEnum_individual =
    const SigninAsDTOAccountTypeEnum._('individual');
const SigninAsDTOAccountTypeEnum _$signinAsDTOAccountTypeEnum_admin =
    const SigninAsDTOAccountTypeEnum._('admin');
const SigninAsDTOAccountTypeEnum _$signinAsDTOAccountTypeEnum_superAdmin =
    const SigninAsDTOAccountTypeEnum._('superAdmin');
const SigninAsDTOAccountTypeEnum _$signinAsDTOAccountTypeEnum_system =
    const SigninAsDTOAccountTypeEnum._('system');

SigninAsDTOAccountTypeEnum _$signinAsDTOAccountTypeEnumValueOf(String name) {
  switch (name) {
    case 'donationCenter':
      return _$signinAsDTOAccountTypeEnum_donationCenter;
    case 'individual':
      return _$signinAsDTOAccountTypeEnum_individual;
    case 'admin':
      return _$signinAsDTOAccountTypeEnum_admin;
    case 'superAdmin':
      return _$signinAsDTOAccountTypeEnum_superAdmin;
    case 'system':
      return _$signinAsDTOAccountTypeEnum_system;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SigninAsDTOAccountTypeEnum> _$signinAsDTOAccountTypeEnumValues =
    new BuiltSet<SigninAsDTOAccountTypeEnum>(const <SigninAsDTOAccountTypeEnum>[
  _$signinAsDTOAccountTypeEnum_donationCenter,
  _$signinAsDTOAccountTypeEnum_individual,
  _$signinAsDTOAccountTypeEnum_admin,
  _$signinAsDTOAccountTypeEnum_superAdmin,
  _$signinAsDTOAccountTypeEnum_system,
]);

Serializer<SigninAsDTOAccountTypeEnum> _$signinAsDTOAccountTypeEnumSerializer =
    new _$SigninAsDTOAccountTypeEnumSerializer();

class _$SigninAsDTOAccountTypeEnumSerializer
    implements PrimitiveSerializer<SigninAsDTOAccountTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'donationCenter': 'donation_center',
    'individual': 'individual',
    'admin': 'admin',
    'superAdmin': 'super_admin',
    'system': 'system',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'donation_center': 'donationCenter',
    'individual': 'individual',
    'admin': 'admin',
    'super_admin': 'superAdmin',
    'system': 'system',
  };

  @override
  final Iterable<Type> types = const <Type>[SigninAsDTOAccountTypeEnum];
  @override
  final String wireName = 'SigninAsDTOAccountTypeEnum';

  @override
  Object serialize(Serializers serializers, SigninAsDTOAccountTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SigninAsDTOAccountTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SigninAsDTOAccountTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SigninAsDTO extends SigninAsDTO {
  @override
  final String email;
  @override
  final String password;
  @override
  final SigninAsDTOAccountTypeEnum accountType;

  factory _$SigninAsDTO([void Function(SigninAsDTOBuilder)? updates]) =>
      (new SigninAsDTOBuilder()..update(updates))._build();

  _$SigninAsDTO._(
      {required this.email, required this.password, required this.accountType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'SigninAsDTO', 'email');
    BuiltValueNullFieldError.checkNotNull(password, r'SigninAsDTO', 'password');
    BuiltValueNullFieldError.checkNotNull(
        accountType, r'SigninAsDTO', 'accountType');
  }

  @override
  SigninAsDTO rebuild(void Function(SigninAsDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SigninAsDTOBuilder toBuilder() => new SigninAsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SigninAsDTO &&
        email == other.email &&
        password == other.password &&
        accountType == other.accountType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, accountType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SigninAsDTO')
          ..add('email', email)
          ..add('password', password)
          ..add('accountType', accountType))
        .toString();
  }
}

class SigninAsDTOBuilder implements Builder<SigninAsDTO, SigninAsDTOBuilder> {
  _$SigninAsDTO? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  SigninAsDTOAccountTypeEnum? _accountType;
  SigninAsDTOAccountTypeEnum? get accountType => _$this._accountType;
  set accountType(SigninAsDTOAccountTypeEnum? accountType) =>
      _$this._accountType = accountType;

  SigninAsDTOBuilder() {
    SigninAsDTO._defaults(this);
  }

  SigninAsDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _accountType = $v.accountType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SigninAsDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SigninAsDTO;
  }

  @override
  void update(void Function(SigninAsDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SigninAsDTO build() => _build();

  _$SigninAsDTO _build() {
    final _$result = _$v ??
        new _$SigninAsDTO._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'SigninAsDTO', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'SigninAsDTO', 'password'),
            accountType: BuiltValueNullFieldError.checkNotNull(
                accountType, r'SigninAsDTO', 'accountType'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
