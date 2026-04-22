import '../database.dart';

class TabUserTable extends SupabaseTable<TabUserRow> {
  @override
  String get tableName => 'tab_user';

  @override
  TabUserRow createRow(Map<String, dynamic> data) => TabUserRow(data);
}

class TabUserRow extends SupabaseDataRow {
  TabUserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TabUserTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get picture => getField<String>('picture');
  set picture(String? value) => setField<String>('picture', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get postalCode => getField<String>('postal_code');
  set postalCode(String? value) => setField<String>('postal_code', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get typeUser => getField<String>('type_user');
  set typeUser(String? value) => setField<String>('type_user', value);

  bool? get newUser => getField<bool>('new_user');
  set newUser(bool? value) => setField<bool>('new_user', value);

  String? get companyName => getField<String>('company_name');
  set companyName(String? value) => setField<String>('company_name', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  bool? get userCreate => getField<bool>('user_create');
  set userCreate(bool? value) => setField<bool>('user_create', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);
}
