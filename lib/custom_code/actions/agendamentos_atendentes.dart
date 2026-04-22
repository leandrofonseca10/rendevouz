// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:supabase_flutter/supabase_flutter.dart';

Future agendamentosAtendentes(
  String? atendID,
  String? tipoServico,
  String? tempoServico,
  DateTime? dataInicial,
  DateTime? datafinal,
  bool? seg,
  String? segHorIni,
  String? segHorFim,
  bool? ter,
  String? terHorIni,
  String? terHorFim,
  bool? qua,
  String? quaHorIni,
  String? quaHorFim,
  bool? qui,
  String? quiHorIni,
  String? quiHorFim,
  bool? sex,
  String? sexHorIni,
  String? sexHorFim,
  bool? sab,
  String? sabHorIni,
  String? sabHorFim,
  bool? dom,
  String? domHorIni,
  String? domHorFim,
) async {
  if (atendID == null ||
      tipoServico == null ||
      tempoServico == null ||
      dataInicial == null ||
      datafinal == null) {
    print("Erro: Parâmetros obrigatórios ausentes.");
    return;
  }

  // Converter tempo de serviço para minutos
  int tempoServicoMin = int.tryParse(tempoServico.replaceAll(':', '')) ?? 60;

  // Mapeia os dias e horários correspondentes
  final diasTrabalho = {
    DateTime.monday: [seg, segHorIni, segHorFim],
    DateTime.tuesday: [ter, terHorIni, terHorFim],
    DateTime.wednesday: [qua, quaHorIni, quaHorFim],
    DateTime.thursday: [qui, quiHorIni, quiHorFim],
    DateTime.friday: [sex, sexHorIni, sexHorFim],
    DateTime.saturday: [sab, sabHorIni, sabHorFim],
    DateTime.sunday: [dom, domHorIni, domHorFim],
  };

  List<Map<String, dynamic>> registros = [];

  for (DateTime dia = dataInicial;
      dia.isBefore(datafinal.add(Duration(days: 1)));
      dia = dia.add(Duration(days: 1))) {
    var configDia = diasTrabalho[dia.weekday];
    if (configDia == null || configDia[0] != true) continue;

    String? horaInicio = configDia[1] as String?;
    String? horaFim = configDia[2] as String?;
    if (horaInicio == null || horaFim == null) continue;

    // Geração de horários
    List<String> horarios = [];
    DateTime horaAtual =
        DateTime.parse("${dia.toIso8601String().split('T')[0]}T$horaInicio:00");
    DateTime horaFinal =
        DateTime.parse("${dia.toIso8601String().split('T')[0]}T$horaFim:00");
    while (horaAtual.isBefore(horaFinal)) {
      horarios.add(
          "${horaAtual.hour.toString().padLeft(2, '0')}:${horaAtual.minute.toString().padLeft(2, '0')}");
      horaAtual = horaAtual.add(Duration(minutes: tempoServicoMin));
    }

    registros.add({
      "date": dia.toIso8601String().split('T')[0],
      "horas": {"horarios": horarios},
      "atend_id": atendID,
      "service": tipoServico,
    });
  }

  // Inserir no Supabase
  final supabase = Supabase.instance.client;
  if (registros.isNotEmpty) {
    final response = await supabase.from('disponibilidades').insert(registros);
    if (response.error != null) {
      print("Erro ao inserir dados: ${response.error?.message}");
    } else {
      print("Dados inseridos com sucesso!");
    }
  }
}
