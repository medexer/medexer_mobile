// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=3.5

part of 'create_donation_center_account_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDonationCenterAccountDTO extends CreateDonationCenterAccountDTO {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String name;
  @override
  final String phone;

  factory _$CreateDonationCenterAccountDTO(
          [void Function(CreateDonationCenterAccountDTOBuilder)? updates]) =>
      (new CreateDonationCenterAccountDTOBuilder()..update(updates))._build();

  _$CreateDonationCenterAccountDTO._(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.name,
      required this.phone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'CreateDonationCenterAccountDTO', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'CreateDonationCenterAccountDTO', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        email, r'CreateDonationCenterAccountDTO', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'CreateDonationCenterAccountDTO', 'password');
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateDonationCenterAccountDTO', 'name');
    BuiltValueNullFieldError.checkNotNull(
        phone, r'CreateDonationCenterAccountDTO', 'phone');
  }

  @override
  CreateDonationCenterAccountDTO rebuild(
          void Function(CreateDonationCenterAccountDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDonationCenterAccountDTOBuilder toBuilder() =>
      new CreateDonationCenterAccountDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDonationCenterAccountDTO &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        password == other.password &&
        name == other.name &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateDonationCenterAccountDTO')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('password', password)
          ..add('name', name)
          ..add('phone', phone))
        .toString();
  }
}

class CreateDonationCenterAccountDTOBuilder
    implements
        Builder<CreateDonationCenterAccountDTO,
            CreateDonationCenterAccountDTOBuilder> {
  _$CreateDonationCenterAccountDTO? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  CreateDonationCenterAccountDTOBuilder() {
    CreateDonationCenterAccountDTO._defaults(this);
  }

  CreateDonationCenterAccountDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _password = $v.password;
      _name = $v.name;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDonationCenterAccountDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateDonationCenterAccountDTO;
  }

  @override
  void update(void Function(CreateDonationCenterAccountDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDonationCenterAccountDTO build() => _build();

  _$CreateDonationCenterAccountDTO _build() {
    final _$result = _$v ??
        new _$CreateDonationCenterAccountDTO._(
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'CreateDonationCenterAccountDTO', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'CreateDonationCenterAccountDTO', 'lastName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'CreateDonationCenterAccountDTO', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'CreateDonationCenterAccountDTO', 'password'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateDonationCenterAccountDTO', 'name'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'CreateDonationCenterAccountDTO', 'phone'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
