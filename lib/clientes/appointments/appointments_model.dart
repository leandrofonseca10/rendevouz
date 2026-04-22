import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login/perfil/perfil_widget.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'appointments_widget.dart' show AppointmentsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppointmentsModel extends FlutterFlowModel<AppointmentsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkHasAgendamento] action in Appointments widget.
  bool? hasAgendamentoResult;
  // State field(s) for Checkbox widget.
  Map<AgendamentosRow, bool> checkboxValueMap = {};
  List<AgendamentosRow> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
