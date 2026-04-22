import '../database.dart';

class ViewChatAtivoCompletoTable
    extends SupabaseTable<ViewChatAtivoCompletoRow> {
  @override
  String get tableName => 'view_chat_ativo_completo';

  @override
  ViewChatAtivoCompletoRow createRow(Map<String, dynamic> data) =>
      ViewChatAtivoCompletoRow(data);
}

class ViewChatAtivoCompletoRow extends SupabaseDataRow {
  ViewChatAtivoCompletoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewChatAtivoCompletoTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get agendamentoId => getField<int>('agendamento_id');
  set agendamentoId(int? value) => setField<int>('agendamento_id', value);

  String? get mensagem => getField<String>('mensagem');
  set mensagem(String? value) => setField<String>('mensagem', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  DateTime? get dataEnvio => getField<DateTime>('data_envio');
  set dataEnvio(DateTime? value) => setField<DateTime>('data_envio', value);

  bool? get chatAtivo => getField<bool>('chat_ativo');
  set chatAtivo(bool? value) => setField<bool>('chat_ativo', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get companyName => getField<String>('company_name');
  set companyName(String? value) => setField<String>('company_name', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get horas => getField<String>('horas');
  set horas(String? value) => setField<String>('horas', value);
}
