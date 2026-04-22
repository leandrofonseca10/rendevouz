import '../database.dart';

class ViewSms3DiasTable extends SupabaseTable<ViewSms3DiasRow> {
  @override
  String get tableName => 'view_sms_3_dias';

  @override
  ViewSms3DiasRow createRow(Map<String, dynamic> data) => ViewSms3DiasRow(data);
}

class ViewSms3DiasRow extends SupabaseDataRow {
  ViewSms3DiasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSms3DiasTable();

  int? get codId => getField<int>('cod_id');
  set codId(int? value) => setField<int>('cod_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  String? get userPhone => getField<String>('user_phone');
  set userPhone(String? value) => setField<String>('user_phone', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get horas => getField<String>('horas');
  set horas(String? value) => setField<String>('horas', value);

  String? get atendId => getField<String>('atend_id');
  set atendId(String? value) => setField<String>('atend_id', value);

  String? get nomeAtendente => getField<String>('nome_atendente');
  set nomeAtendente(String? value) => setField<String>('nome_atendente', value);

  String? get companyId => getField<String>('company_id');
  set companyId(String? value) => setField<String>('company_id', value);

  String? get companyName => getField<String>('company_name');
  set companyName(String? value) => setField<String>('company_name', value);

  bool? get chatAtivo => getField<bool>('chat_ativo');
  set chatAtivo(bool? value) => setField<bool>('chat_ativo', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
