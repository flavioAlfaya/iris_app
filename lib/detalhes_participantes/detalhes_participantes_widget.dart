import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'detalhes_participantes_model.dart';
export 'detalhes_participantes_model.dart';

class DetalhesParticipantesWidget extends StatefulWidget {
  const DetalhesParticipantesWidget({
    Key? key,
    String? nome,
    this.image1,
    this.image2,
    this.image3,
  })  : this.nome = nome ?? 'Nome',
        super(key: key);

  final String nome;
  final String? image1;
  final String? image2;
  final String? image3;

  @override
  _DetalhesParticipantesWidgetState createState() =>
      _DetalhesParticipantesWidgetState();
}

class _DetalhesParticipantesWidgetState
    extends State<DetalhesParticipantesWidget> {
  late DetalhesParticipantesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalhesParticipantesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Detalhes da participante',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Nome:',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        Text(
                          widget.nome,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        widget.image1!,
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        widget.image2!,
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        widget.image3!,
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
