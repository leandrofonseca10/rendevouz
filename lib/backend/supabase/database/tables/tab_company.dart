import '../database.dart';

class TabCompanyTable extends SupabaseTable<TabCompanyRow> {
  @override
  String get tableName => 'tab_company';

  @override
  TabCompanyRow createRow(Map<String, dynamic> data) => TabCompanyRow(data);
}

class TabCompanyRow extends SupabaseDataRow {
  TabCompanyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TabCompanyTable();

  int get companyId => getField<int>('company_id')!;
  set companyId(int value) => setField<int>('company_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get companyName => getField<String>('company_name');
  set companyName(String? value) => setField<String>('company_name', value);

  String? get companyNickname => getField<String>('company_nickname');
  set companyNickname(String? value) =>
      setField<String>('company_nickname', value);

  String? get sector => getField<String>('sector');
  set sector(String? value) => setField<String>('sector', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get website => getField<String>('website');
  set website(String? value) => setField<String>('website', value);

  String? get logopicture => getField<String>('logopicture');
  set logopicture(String? value) => setField<String>('logopicture', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  double? get tax1 => getField<double>('tax1');
  set tax1(double? value) => setField<double>('tax1', value);

  double? get tax2 => getField<double>('tax2');
  set tax2(double? value) => setField<double>('tax2', value);

  double? get tax3 => getField<double>('tax3');
  set tax3(double? value) => setField<double>('tax3', value);

  String? get responsavelId => getField<String>('responsavel_id');
  set responsavelId(String? value) => setField<String>('responsavel_id', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);
}
