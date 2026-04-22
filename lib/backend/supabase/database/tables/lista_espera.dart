import '../database.dart';

class ListaEsperaTable extends SupabaseTable<ListaEsperaRow> {
  @override
  String get tableName => 'lista_espera';

  @override
  ListaEsperaRow createRow(Map<String, dynamic> data) => ListaEsperaRow(data);
}

class ListaEsperaRow extends SupabaseDataRow {
  ListaEsperaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListaEsperaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get send => getField<bool>('send');
  set send(bool? value) => setField<bool>('send', value);

  String? get companyNickname => getField<String>('company_nickname');
  set companyNickname(String? value) =>
      setField<String>('company_nickname', value);

  String? get atendenteId => getField<String>('atendente_id');
  set atendenteId(String? value) => setField<String>('atendente_id', value);

  String? get nomeAtendente => getField<String>('nome_atendente');
  set nomeAtendente(String? value) => setField<String>('nome_atendente', value);
}
