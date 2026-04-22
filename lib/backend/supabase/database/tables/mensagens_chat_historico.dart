import '../database.dart';

class MensagensChatHistoricoTable
    extends SupabaseTable<MensagensChatHistoricoRow> {
  @override
  String get tableName => 'mensagens_chat_historico';

  @override
  MensagensChatHistoricoRow createRow(Map<String, dynamic> data) =>
      MensagensChatHistoricoRow(data);
}

class MensagensChatHistoricoRow extends SupabaseDataRow {
  MensagensChatHistoricoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MensagensChatHistoricoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get mensagem => getField<String>('mensagem');
  set mensagem(String? value) => setField<String>('mensagem', value);

  DateTime? get dataEnvio => getField<DateTime>('data_envio');
  set dataEnvio(DateTime? value) => setField<DateTime>('data_envio', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  int? get agendamentoId => getField<int>('agendamento_id');
  set agendamentoId(int? value) => setField<int>('agendamento_id', value);
}
