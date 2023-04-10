import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'q2_model.dart';
export 'q2_model.dart';

class Q2Widget extends StatefulWidget {
  const Q2Widget({Key? key}) : super(key: key);

  @override
  _Q2WidgetState createState() => _Q2WidgetState();
}

class _Q2WidgetState extends State<Q2Widget> {
  late Q2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Q2Model());
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).black600,
          automaticallyImplyLeading: false,
          title: Text(
            'Questions',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<QuestionsRecord>>(
                stream: queryQuestionsRecord(
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  List<QuestionsRecord> textQuestionsRecordList =
                      snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final textQuestionsRecord = textQuestionsRecordList.isNotEmpty
                      ? textQuestionsRecordList.first
                      : null;
                  return Text(
                    textQuestionsRecord!.question!,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  );
                },
              ),
              StreamBuilder<List<QuestionsRecord>>(
                stream: queryQuestionsRecord(
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  List<QuestionsRecord> textQuestionsRecordList =
                      snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final textQuestionsRecord = textQuestionsRecordList.isNotEmpty
                      ? textQuestionsRecordList.first
                      : null;
                  return Text(
                    textQuestionsRecord!.correctAnswer!,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  );
                },
              ),
              StreamBuilder<List<QuestionsRecord>>(
                stream: queryQuestionsRecord(
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  List<QuestionsRecord> textQuestionsRecordList =
                      snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final textQuestionsRecord = textQuestionsRecordList.isNotEmpty
                      ? textQuestionsRecordList.first
                      : null;
                  return Text(
                    textQuestionsRecord!.incorrectAnswer1!,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  );
                },
              ),
              StreamBuilder<List<QuestionsRecord>>(
                stream: queryQuestionsRecord(
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  List<QuestionsRecord> textQuestionsRecordList =
                      snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final textQuestionsRecord = textQuestionsRecordList.isNotEmpty
                      ? textQuestionsRecordList.first
                      : null;
                  return Text(
                    textQuestionsRecord!.incorrectAnswer2!,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  );
                },
              ),
              StreamBuilder<List<QuestionsRecord>>(
                stream: queryQuestionsRecord(
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  List<QuestionsRecord> textQuestionsRecordList =
                      snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final textQuestionsRecord = textQuestionsRecordList.isNotEmpty
                      ? textQuestionsRecordList.first
                      : null;
                  return Text(
                    textQuestionsRecord!.incorrectAnswer3!,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  );
                },
              ),
              StreamBuilder<List<QuestionsRecord>>(
                stream: queryQuestionsRecord(
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  List<QuestionsRecord> textQuestionsRecordList =
                      snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final textQuestionsRecord = textQuestionsRecordList.isNotEmpty
                      ? textQuestionsRecordList.first
                      : null;
                  return Text(
                    textQuestionsRecord!.incorrectAnswer4!,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  );
                },
              ),
              StreamBuilder<List<QuestionsRecord>>(
                stream: queryQuestionsRecord(
                  singleRecord: true,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    );
                  }
                  List<QuestionsRecord> buttonQuestionsRecordList =
                      snapshot.data!;
                  // Return an empty Container when the item does not exist.
                  if (snapshot.data!.isEmpty) {
                    return Container();
                  }
                  final buttonQuestionsRecord =
                      buttonQuestionsRecordList.isNotEmpty
                          ? buttonQuestionsRecordList.first
                          : null;
                  return FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: buttonQuestionsRecord!.correctAnswer!,
                    options: FFButtonOptions(
                      width: 130.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  );
                },
              ),
              FlutterFlowRadioButton(
                options:
                    ['Safety', 'Danger', 'Hazard', 'Rage', 'Extreme'].toList(),
                onChanged: (val) => setState(() {}),
                controller: _model.radioButtonController ??=
                    FormFieldController<String>(null),
                optionHeight: 25.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                    ),
                buttonPosition: RadioButtonPosition.left,
                direction: Axis.vertical,
                radioButtonColor: Colors.blue,
                inactiveRadioButtonColor: Color(0x8A000000),
                toggleable: false,
                horizontalAlignment: WrapAlignment.start,
                verticalAlignment: WrapCrossAlignment.start,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
