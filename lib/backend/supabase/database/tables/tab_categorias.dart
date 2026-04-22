import '../database.dart';

class TabCategoriasTable extends SupabaseTable<TabCategoriasRow> {
  @override
  String get tableName => 'tab_categorias';

  @override
  TabCategoriasRow createRow(Map<String, dynamic> data) =>
      TabCategoriasRow(data);
}

class TabCategoriasRow extends SupabaseDataRow {
  TabCategoriasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TabCategoriasTable();

  int get idCategoria => getField<int>('id_categoria')!;
  set idCategoria(int value) => setField<int>('id_categoria', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get nomeCategoria => getField<String>('nome_categoria');
  set nomeCategoria(String? value) => setField<String>('nome_categoria', value);

  String? get logoCategoria => getField<String>('logo_categoria');
  set logoCategoria(String? value) => setField<String>('logo_categoria', value);
}
