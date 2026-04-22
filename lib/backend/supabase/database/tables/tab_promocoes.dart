import '../database.dart';

class TabPromocoesTable extends SupabaseTable<TabPromocoesRow> {
  @override
  String get tableName => 'tab_promocoes';

  @override
  TabPromocoesRow createRow(Map<String, dynamic> data) => TabPromocoesRow(data);
}

class TabPromocoesRow extends SupabaseDataRow {
  TabPromocoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TabPromocoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  String? get banner => getField<String>('banner');
  set banner(String? value) => setField<String>('banner', value);

  int? get posicao => getField<int>('posicao');
  set posicao(int? value) => setField<int>('posicao', value);
}
