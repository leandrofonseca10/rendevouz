import '../database.dart';

class ViewAtendentesByCompanyTable
    extends SupabaseTable<ViewAtendentesByCompanyRow> {
  @override
  String get tableName => 'view_atendentes_by_company';

  @override
  ViewAtendentesByCompanyRow createRow(Map<String, dynamic> data) =>
      ViewAtendentesByCompanyRow(data);
}

class ViewAtendentesByCompanyRow extends SupabaseDataRow {
  ViewAtendentesByCompanyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewAtendentesByCompanyTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get picture => getField<String>('picture');
  set picture(String? value) => setField<String>('picture', value);

  String? get companyNickname => getField<String>('company_nickname');
  set companyNickname(String? value) =>
      setField<String>('company_nickname', value);

  String? get responsavelId => getField<String>('responsavel_id');
  set responsavelId(String? value) => setField<String>('responsavel_id', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);
}
