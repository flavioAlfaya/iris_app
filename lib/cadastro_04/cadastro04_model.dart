import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Cadastro04Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for radio_autocoleta widget.
  String? radioAutocoletaValue;
  // State field(s) for caixa_motivoautocoleta widget.
  TextEditingController? caixaMotivoautocoletaController;
  String? Function(BuildContext, String?)?
      caixaMotivoautocoletaControllerValidator;
  var bSIQRCode = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    caixaMotivoautocoletaController?.dispose();
  }

  /// Additional helper methods are added here.

}
