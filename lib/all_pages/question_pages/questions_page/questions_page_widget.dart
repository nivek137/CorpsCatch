import '/backend/backend.dart';
import '/components/quiz_option_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'questions_page_model.dart';
export 'questions_page_model.dart';

class QuestionsPageWidget extends StatefulWidget {
  const QuestionsPageWidget({
    Key? key,
    this.quizSetRef,
    this.quizDuration,
  }) : super(key: key);

  final DocumentReference? quizSetRef;
  final int? quizDuration;

  @override
  _QuestionsPageWidgetState createState() => _QuestionsPageWidgetState();
}

class _QuestionsPageWidgetState extends State<QuestionsPageWidget> {
  late QuestionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  int get pageViewCurrentIndex => _model.pageViewController != null &&
          _model.pageViewController!.hasClients &&
          _model.pageViewController!.page != null
      ? _model.pageViewController!.page!.round()
      : 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 1000),
        callback: (timer) async {
          await _model.pageViewController?.animateToPage(
            FFAppState().completedQuestions,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
          _model.timerController.onExecute.add(StopWatchExecute.start);
        },
        startImmediately: true,
      );
    });

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

    return FutureBuilder<int>(
      future: queryQuizRecordCount(
        queryBuilder: (quizRecord) =>
            quizRecord.where('quiz_set', isEqualTo: widget.quizSetRef),
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
        int questionsPageCount = snapshot.data!;
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
              child:
                  // added filter to q choice A for id (added id = 0 to firestore) to equal completedQuestions (app state_ also added a couple of text to try to test variables
                  Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 15.0, 0.0),
                          child: Container(
                            height: 26.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(25.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Icon(
                                    Icons.timer_sharp,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                ),
                                if (_model.timerMilliseconds > 0)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: FlutterFlowTimer(
                                      initialTime: _model.timerMilliseconds,
                                      getDisplayTime: (value) =>
                                          StopWatchTimer.getDisplayTime(
                                        value,
                                        hours: false,
                                        minute: false,
                                        milliSecond: false,
                                      ),
                                      timer: _model.timerController,
                                      updateStateInterval:
                                          Duration(milliseconds: 1000),
                                      onChanged:
                                          (value, displayTime, shouldUpdate) {
                                        _model.timerMilliseconds = value;
                                        _model.timerValue = displayTime;
                                        if (shouldUpdate) setState(() {});
                                      },
                                      onEnded: () async {
                                        context.pushNamed('ActiveMap');
                                      },
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 15.0, 0.0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Q ',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      (FFAppState().completedQuestions + 1)
                                          .toString(),
                                      '0',
                                    ),
                                    style: TextStyle(),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: LinearPercentIndicator(
                      percent: (FFAppState().completedQuestions) / 5,
                      width: MediaQuery.of(context).size.width * 1.0,
                      lineHeight: 10.0,
                      animation: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent2,
                      barRadius: Radius.circular(12.0),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  StreamBuilder<List<QuizRecord>>(
                    stream: queryQuizRecord(
                      queryBuilder: (quizRecord) => quizRecord.where('quiz_set',
                          isEqualTo: widget.quizSetRef),
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
                      List<QuizRecord> pageViewQuizRecordList = snapshot.data!;
                      return Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: PageView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _model.pageViewController ??=
                              PageController(
                                  initialPage: min(
                                      0, pageViewQuizRecordList.length - 1)),
                          scrollDirection: Axis.horizontal,
                          itemCount: pageViewQuizRecordList.length,
                          itemBuilder: (context, pageViewIndex) {
                            final pageViewQuizRecord =
                                pageViewQuizRecordList[pageViewIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 10.0, 5.0, 0.0),
                                        child: StreamBuilder<List<QuizRecord>>(
                                          stream: queryQuizRecord(
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<QuizRecord>
                                                textQuizRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final textQuizRecord =
                                                textQuizRecordList.isNotEmpty
                                                    ? textQuizRecordList.first
                                                    : null;
                                            return Text(
                                              pageViewQuizRecord.question!,
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    StreamBuilder<List<QuestionARecord>>(
                                      stream: queryQuestionARecord(
                                        parent: pageViewQuizRecord.reference,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        List<QuestionARecord>
                                            quizOptionQuestionARecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final quizOptionQuestionARecord =
                                            quizOptionQuestionARecordList
                                                    .isNotEmpty
                                                ? quizOptionQuestionARecordList
                                                    .first
                                                : null;
                                        return QuizOptionWidget(
                                          key: Key(
                                              'Keypah_${pageViewIndex}_of_${pageViewQuizRecordList.length}'),
                                          questionNum: 'A',
                                          questionName:
                                              quizOptionQuestionARecord!
                                                  .question,
                                          isTrue:
                                              quizOptionQuestionARecord!.isTrue,
                                        );
                                      },
                                    ),
                                    StreamBuilder<List<QuestionBRecord>>(
                                      stream: queryQuestionBRecord(
                                        parent: pageViewQuizRecord.reference,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        List<QuestionBRecord>
                                            quizOptionQuestionBRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final quizOptionQuestionBRecord =
                                            quizOptionQuestionBRecordList
                                                    .isNotEmpty
                                                ? quizOptionQuestionBRecordList
                                                    .first
                                                : null;
                                        return QuizOptionWidget(
                                          key: Key(
                                              'Keytm7_${pageViewIndex}_of_${pageViewQuizRecordList.length}'),
                                          questionNum: 'B',
                                          questionName:
                                              quizOptionQuestionBRecord!
                                                  .question,
                                          isTrue:
                                              quizOptionQuestionBRecord!.isTrue,
                                        );
                                      },
                                    ),
                                    StreamBuilder<List<QuestionCRecord>>(
                                      stream: queryQuestionCRecord(
                                        parent: pageViewQuizRecord.reference,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        List<QuestionCRecord>
                                            quizOptionQuestionCRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final quizOptionQuestionCRecord =
                                            quizOptionQuestionCRecordList
                                                    .isNotEmpty
                                                ? quizOptionQuestionCRecordList
                                                    .first
                                                : null;
                                        return QuizOptionWidget(
                                          key: Key(
                                              'Keyqr5_${pageViewIndex}_of_${pageViewQuizRecordList.length}'),
                                          questionNum: 'C',
                                          questionName:
                                              quizOptionQuestionCRecord!
                                                  .question,
                                          isTrue:
                                              quizOptionQuestionCRecord!.isTrue,
                                        );
                                      },
                                    ),
                                    FutureBuilder<List<QuestionDRecord>>(
                                      future: queryQuestionDRecordOnce(
                                        parent: pageViewQuizRecord.reference,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        List<QuestionDRecord>
                                            quizOptionQuestionDRecordList =
                                            snapshot.data!;
                                        final quizOptionQuestionDRecord =
                                            quizOptionQuestionDRecordList
                                                    .isNotEmpty
                                                ? quizOptionQuestionDRecordList
                                                    .first
                                                : null;
                                        return QuizOptionWidget(
                                          key: Key(
                                              'Keyv2l_${pageViewIndex}_of_${pageViewQuizRecordList.length}'),
                                          questionNum: 'D',
                                          questionName:
                                              quizOptionQuestionDRecord!
                                                  .question,
                                          isTrue:
                                              quizOptionQuestionDRecord!.isTrue,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              if (FFAppState().completedQuestions <= 5) {
                                FFAppState().update(() {
                                  FFAppState().completedQuestions =
                                      FFAppState().completedQuestions + 1;
                                });
                                setState(() {
                                  _model.pageNavigation =
                                      _model.pageNavigation + 1;
                                });

                                context.pushNamed('ActiveMap');

                                if (questionsPageCount !=
                                    _model.pageNavigation) {
                                  setState(() {
                                    _model.pageNavigation =
                                        _model.pageNavigation + 1;
                                  });
                                }
                              } else {
                                context.pushNamed('CongratulationsPage');

                                FFAppState().update(() {
                                  FFAppState().completedQuestions = 0;
                                });
                              }
                            },
                            text: 'Next',
                            options: FFButtonOptions(
                              width: 130.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
