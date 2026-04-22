import '../database.dart';

class DisponibilidadesTable extends SupabaseTable<DisponibilidadesRow> {
  @override
  String get tableName => 'disponibilidades';

  @override
  DisponibilidadesRow createRow(Map<String, dynamic> data) =>
      DisponibilidadesRow(data);
}

class DisponibilidadesRow extends SupabaseDataRow {
  DisponibilidadesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DisponibilidadesTable();

  int get codId => getField<int>('cod_id')!;
  set codId(int value) => setField<int>('cod_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  dynamic? get horas => getField<dynamic>('horas');
  set horas(dynamic? value) => setField<dynamic>('horas', value);

  String? get atendId => getField<String>('atend_id');
  set atendId(String? value) => setField<String>('atend_id', value);

  String? get service => getField<String>('service');
  set service(String? value) => setField<String>('service', value);

  String? get companyName => getField<String>('company_name');
  set companyName(String? value) => setField<String>('company_name', value);

  String? get companyId => getField<String>('company_id');
  set companyId(String? value) => setField<String>('company_id', value);
}
