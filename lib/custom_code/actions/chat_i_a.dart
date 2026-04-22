// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> chatIA(
  String? userid,
  String? mensagem,
  int? agendamentoID,
) async {
  if (userid == null || mensagem == null || agendamentoID == null) {
    print("❌ Parâmetros inválidos");
    return;
  }

  try {
    await SupaFlow.client.from('mensagens_chat').insert({
      'user_id': userid, // uuid auth.users
      'mensagem': mensagem,
      'agendamento_id': agendamentoID, // int (cod_id do agendamento)
      'tipo': 'USER',
      'data_envio': DateTime.now().toUtc().toIso8601String(),
    });

    print("✅ Mensagem USER gravada no Supabase. IA responde via webhook.");
  } catch (e) {
    print("❌ Erro ao inserir mensagens_chat: $e");
  }
}
