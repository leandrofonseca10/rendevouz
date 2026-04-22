import '../database.dart';

class AgendamentosTable extends SupabaseTable<AgendamentosRow> {
  @override
  String get tableName => 'agendamentos';

  @override
  AgendamentosRow createRow(Map<String, dynamic> data) => AgendamentosRow(data);
}

class AgendamentosRow extends SupabaseDataRow {
  AgendamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AgendamentosTable();

  int get codId => getField<int>('cod_id')!;
  set codId(int value) => setField<int>('cod_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get horas => getField<String>('horas');
  set horas(String? value) => setField<String>('horas', value);

  String? get atendId => getField<String>('atend_id');
  set atendId(String? value) => setField<String>('atend_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get nomeAtendente => getField<String>('nome_atendente');
  set nomeAtendente(String? value) => setField<String>('nome_atendente', value);

  String? get companyName => getField<String>('company_name');
  set companyName(String? value) => setField<String>('company_name', value);

  String? get companyId => getField<String>('company_id');
  set companyId(String? value) => setField<String>('company_id', value);

  bool? get listaEspera => getField<bool>('lista_espera');
  set listaEspera(bool? value) => setField<bool>('lista_espera', value);

  bool? get sms3dias => getField<bool>('sms_3dias');
  set sms3dias(bool? value) => setField<bool>('sms_3dias', value);

  bool? get conviteAtivo => getField<bool>('convite_ativo');
  set conviteAtivo(bool? value) => setField<bool>('convite_ativo', value);

  String? get userPhone => getField<String>('user_phone');
  set userPhone(String? value) => setField<String>('user_phone', value);

  DateTime? get tentativaConviteEm =>
      getField<DateTime>('tentativa_convite_em');
  set tentativaConviteEm(DateTime? value) =>
      setField<DateTime>('tentativa_convite_em', value);

  DateTime? get novaData => getField<DateTime>('nova_data');
  set novaData(DateTime? value) => setField<DateTime>('nova_data', value);

  String? get nameUser => getField<String>('name_user');
  set nameUser(String? value) => setField<String>('name_user', value);

  bool? get reagendando => getField<bool>('reagendando');
  set reagendando(bool? value) => setField<bool>('reagendando', value);

  String? get novaHora => getField<String>('nova_hora');
  set novaHora(String? value) => setField<String>('nova_hora', value);

  bool? get chatAtivo => getField<bool>('chat_ativo');
  set chatAtivo(bool? value) => setField<bool>('chat_ativo', value);

  bool? get aguardandoContato => getField<bool>('aguardando_contato');
  set aguardandoContato(bool? value) =>
      setField<bool>('aguardando_contato', value);

  String? get telefoneContato => getField<String>('telefone_contato');
  set telefoneContato(String? value) =>
      setField<String>('telefone_contato', value);

  int? get tentativasTelefone => getField<int>('tentativas_telefone');
  set tentativasTelefone(int? value) =>
      setField<int>('tentativas_telefone', value);
}
