// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

/// Custom Action: verifica se o usuário tem ao menos um agendamento ativo
Future<bool> checkHasAgendamento(
  String userId,
) async {
  // Obtém instância do cliente Supabase
  final supabase = Supabase.instance.client;
  try {
    // Consulta a view para obter o registro único
    final data = await supabase
        .from('view_user_has_agendamento')
        .select('has_agendamento')
        .eq('user_id', userId)
        .single();

    if (data == null) {
      // Nenhum registro encontrado
      return false;
    }

    // Extrai o valor booleano
    final record = data as Map<String, dynamic>;
    final hasAg = record['has_agendamento'];
    if (hasAg is bool) {
      return hasAg;
    }
    return false;
  } catch (e) {
    print('❌ Exceção em checkHasAgendamento: $e');
    return false;
  }
}
