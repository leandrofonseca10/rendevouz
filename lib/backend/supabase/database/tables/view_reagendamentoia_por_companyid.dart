import '../database.dart';

class ViewReagendamentoiaPorCompanyidTable
    extends SupabaseTable<ViewReagendamentoiaPorCompanyidRow> {
  @override
  String get tableName => 'view_reagendamentoia_por_companyid';

  @override
  ViewReagendamentoiaPorCompanyidRow createRow(Map<String, dynamic> data) =>
      ViewReagendamentoiaPorCompanyidRow(data);
}

class ViewReagendamentoiaPorCompanyidRow extends SupabaseDataRow {
  ViewReagendamentoiaPorCompanyidRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewReagendamentoiaPorCompanyidTable();

  String? get companyId => getField<String>('company_id');
  set companyId(String? value) => setField<String>('company_id', value);

  int? get totalAgendados => getField<int>('total_agendados');
  set totalAgendados(int? value) => setField<int>('total_agendados', value);

  int? get totalCancelamentos => getField<int>('total_cancelamentos');
  set totalCancelamentos(int? value) =>
      setField<int>('total_cancelamentos', value);

  int? get totalReagendados => getField<int>('total_reagendados');
  set totalReagendados(int? value) => setField<int>('total_reagendados', value);

  int? get totalListaEspera => getField<int>('total_lista_espera');
  set totalListaEspera(int? value) =>
      setField<int>('total_lista_espera', value);

  int? get totalHorariosDisponiveis =>
      getField<int>('total_horarios_disponiveis');
  set totalHorariosDisponiveis(int? value) =>
      setField<int>('total_horarios_disponiveis', value);
}
