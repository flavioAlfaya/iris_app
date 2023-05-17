import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Cadastro09Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for radio_opcaobiopsia widget.
  String? radioOpcaobiopsiaValue;
  // State field(s) for caixa_numerodefragmentosbiopsia widget.
  TextEditingController? caixaNumerodefragmentosbiopsiaController;
  String? Function(BuildContext, String?)?
      caixaNumerodefragmentosbiopsiaControllerValidator;
  // State field(s) for caixa_motivodenaorealizarbiopsia widget.
  TextEditingController? caixaMotivodenaorealizarbiopsiaController;
  String? Function(BuildContext, String?)?
      caixaMotivodenaorealizarbiopsiaControllerValidator;
  // State field(s) for caixa_numerodepecasbiopsia widget.
  TextEditingController? caixaNumerodepecasbiopsiaController;
  String? Function(BuildContext, String?)?
      caixaNumerodepecasbiopsiaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    caixaNumerodefragmentosbiopsiaController?.dispose();
    caixaMotivodenaorealizarbiopsiaController?.dispose();
    caixaNumerodepecasbiopsiaController?.dispose();
  }

  /// Additional helper methods are added here.

}
