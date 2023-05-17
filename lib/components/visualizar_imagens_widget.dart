import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'visualizar_imagens_model.dart';
export 'visualizar_imagens_model.dart';

class VisualizarImagensWidget extends StatefulWidget {
  const VisualizarImagensWidget({
    Key? key,
    this.image1,
    this.image2,
    this.image3,
  }) : super(key: key);

  final String? image1;
  final String? image2;
  final String? image3;

  @override
  _VisualizarImagensWidgetState createState() =>
      _VisualizarImagensWidgetState();
}

class _VisualizarImagensWidgetState extends State<VisualizarImagensWidget> {
  late VisualizarImagensModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisualizarImagensModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Imagens',
                  style: FlutterFlowTheme.of(context).subtitle1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  widget.image1!,
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  widget.image2!,
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  widget.image3!,
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
