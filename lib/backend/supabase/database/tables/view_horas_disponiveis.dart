import '../database.dart';

class ViewHorasDisponiveisTable extends SupabaseTable<ViewHorasDisponiveisRow> {
  @override
  String get tableName => 'view_horas_disponiveis';

  @override
  ViewHorasDisponiveisRow createRow(Map<String, dynamic> data) =>
      ViewHorasDisponiveisRow(data);
}

class ViewHorasDisponiveisRow extends SupabaseDataRow {
  ViewHorasDisponiveisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewHorasDisponiveisTable();

  String? get atendId => getField<String>('atend_id');
  set atendId(String? value) => setField<String>('atend_id', value);

  String? get companyId => getField<String>('company_id');
  set companyId(String? value) => setField<String>('company_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  dynamic? get horasDisponiveis => getField<dynamic>('horas_disponiveis');
  set horasDisponiveis(dynamic? value) =>
      setField<dynamic>('horas_disponiveis', value);
}
