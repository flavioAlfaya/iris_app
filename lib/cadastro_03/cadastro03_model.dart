import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Cadastro03Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for radio_tipovisita widget.
  String? radioTipovisitaValue;
  // State field(s) for lista_resultadocitologia widget.
  String? listaResultadocitologiaValue;
  // State field(s) for lista_resultadohistopatologia widget.
  String? listaResultadohistopatologiaValue;
  // State field(s) for caixa_motivocitologiahistopatologia widget.
  TextEditingController? caixaMotivocitologiahistopatologiaController;
  String? Function(BuildContext, String?)?
      caixaMotivocitologiahistopatologiaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    caixaMotivocitologiahistopatologiaController?.dispose();
  }

  /// Additional helper methods are added here.

}
