import '../database.dart';

class ViewHorasAgendadasPorAtendentesTable
    extends SupabaseTable<ViewHorasAgendadasPorAtendentesRow> {
  @override
  String get tableName => 'view_horas_agendadas_por_atendentes';

  @override
  ViewHorasAgendadasPorAtendentesRow createRow(Map<String, dynamic> data) =>
      ViewHorasAgendadasPorAtendentesRow(data);
}

class ViewHorasAgendadasPorAtendentesRow extends SupabaseDataRow {
  ViewHorasAgendadasPorAtendentesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewHorasAgendadasPorAtendentesTable();

  String? get atendId => getField<String>('atend_id');
  set atendId(String? value) => setField<String>('atend_id', value);

  String? get nomeAtendente => getField<String>('nome_atendente');
  set nomeAtendente(String? value) => setField<String>('nome_atendente', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  dynamic? get horasAgendadas => getField<dynamic>('horas_agendadas');
  set horasAgendadas(dynamic? value) =>
      setField<dynamic>('horas_agendadas', value);

  String? get companyId => getField<String>('company_id');
  set companyId(String? value) => setField<String>('company_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
