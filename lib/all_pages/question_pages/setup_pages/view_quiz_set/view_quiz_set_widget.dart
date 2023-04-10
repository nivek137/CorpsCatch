import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_quiz_set_model.dart';
export 'view_quiz_set_model.dart';

class ViewQuizSetWidget extends StatefulWidget {
  const ViewQuizSetWidget({Key? key}) : super(key: key);

  @override
  _ViewQuizSetWidgetState createState() => _ViewQuizSetWidgetState();
}

class _ViewQuizSetWidgetState extends State<ViewQuizSetWidget> {
  late ViewQuizSetModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewQuizSetModel());
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
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: StreamBuilder<List<QuizSetRecord>>(
              stream: queryQuizSetRecord(),
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
                List<QuizSetRecord> columnQuizSetRecordList = snapshot.data!;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(columnQuizSetRecordList.length,
                      (columnIndex) {
                    final columnQuizSetRecord =
                        columnQuizSetRecordList[columnIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              StreamBuilder<List<QuizSetRecord>>(
                                stream: queryQuizSetRecord(
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                    );
                                  }
                                  List<QuizSetRecord> textQuizSetRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final textQuizSetRecord =
                                      textQuizSetRecordList.isNotEmpty
                                          ? textQuizSetRecordList.first
                                          : null;
                                  return Text(
                                    textQuizSetRecord!.description!,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  );
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              StreamBuilder<List<QuizSetRecord>>(
                                stream: queryQuizSetRecord(
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                    );
                                  }
                                  List<QuizSetRecord> textQuizSetRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final textQuizSetRecord =
                                      textQuizSetRecordList.isNotEmpty
                                          ? textQuizSetRecordList.first
                                          : null;
                                  return Text(
                                    textQuizSetRecord!.totalQuestions!
                                        .toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  );
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              StreamBuilder<List<QuizSetRecord>>(
                                stream: queryQuizSetRecord(
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                    );
                                  }
                                  List<QuizSetRecord> textQuizSetRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final textQuizSetRecord =
                                      textQuizSetRecordList.isNotEmpty
                                          ? textQuizSetRecordList.first
                                          : null;
                                  return Text(
                                    textQuizSetRecord!.duration!.toString(),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  );
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              StreamBuilder<List<QuizSetRecord>>(
                                stream: queryQuizSetRecord(
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                    );
                                  }
                                  List<QuizSetRecord> textQuizSetRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final textQuizSetRecord =
                                      textQuizSetRecordList.isNotEmpty
                                          ? textQuizSetRecordList.first
                                          : null;
                                  return Text(
                                    textQuizSetRecord!.quizName!,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
