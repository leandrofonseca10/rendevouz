import '../database.dart';

class UserTokensTable extends SupabaseTable<UserTokensRow> {
  @override
  String get tableName => 'user_tokens';

  @override
  UserTokensRow createRow(Map<String, dynamic> data) => UserTokensRow(data);
}

class UserTokensRow extends SupabaseDataRow {
  UserTokensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTokensTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get playerId => getField<String>('player_id')!;
  set playerId(String value) => setField<String>('player_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
