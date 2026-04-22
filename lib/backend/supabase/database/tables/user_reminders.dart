import '../database.dart';

class UserRemindersTable extends SupabaseTable<UserRemindersRow> {
  @override
  String get tableName => 'user_reminders';

  @override
  UserRemindersRow createRow(Map<String, dynamic> data) =>
      UserRemindersRow(data);
}

class UserRemindersRow extends SupabaseDataRow {
  UserRemindersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserRemindersTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get dueDate => getField<DateTime>('due_date')!;
  set dueDate(DateTime value) => setField<DateTime>('due_date', value);

  String get message => getField<String>('message')!;
  set message(String value) => setField<String>('message', value);

  bool? get notified => getField<bool>('notified');
  set notified(bool? value) => setField<bool>('notified', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
