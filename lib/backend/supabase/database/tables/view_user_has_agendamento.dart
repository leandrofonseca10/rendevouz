import '../database.dart';

class ViewUserHasAgendamentoTable
    extends SupabaseTable<ViewUserHasAgendamentoRow> {
  @override
  String get tableName => 'view_user_has_agendamento';

  @override
  ViewUserHasAgendamentoRow createRow(Map<String, dynamic> data) =>
      ViewUserHasAgendamentoRow(data);
}

class ViewUserHasAgendamentoRow extends SupabaseDataRow {
  ViewUserHasAgendamentoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewUserHasAgendamentoTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get hasAgendamento => getField<bool>('has_agendamento');
  set hasAgendamento(bool? value) => setField<bool>('has_agendamento', value);
}
