import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class Cadastro02Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for caixa_nome widget.
  TextEditingController? caixaNomeController;
  String? Function(BuildContext, String?)? caixaNomeControllerValidator;
  // State field(s) for caixa_datanascimento widget.
  TextEditingController? caixaDatanascimentoController;
  final caixaDatanascimentoMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      caixaDatanascimentoControllerValidator;
  // State field(s) for caixa_cpf widget.
  TextEditingController? caixaCpfController;
  final caixaCpfMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? caixaCpfControllerValidator;
  // State field(s) for caixa_cns widget.
  TextEditingController? caixaCnsController;
  String? Function(BuildContext, String?)? caixaCnsControllerValidator;
  // State field(s) for caixa_contato widget.
  TextEditingController? caixaContatoController;
  final caixaContatoMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? caixaContatoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    caixaNomeController?.dispose();
    caixaDatanascimentoController?.dispose();
    caixaCpfController?.dispose();
    caixaCnsController?.dispose();
    caixaContatoController?.dispose();
  }

  /// Additional helper methods are added here.

}
