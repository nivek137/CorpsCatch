import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quiz_option_model.dart';
export 'quiz_option_model.dart';

class QuizOptionWidget extends StatefulWidget {
  const QuizOptionWidget({
    Key? key,
    this.questionNum,
    this.questionName,
    this.isTrue,
  }) : super(key: key);

  final String? questionNum;
  final String? questionName;
  final bool? isTrue;

  @override
  _QuizOptionWidgetState createState() => _QuizOptionWidgetState();
}

class _QuizOptionWidgetState extends State<QuizOptionWidget> {
  late QuizOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizOptionModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          if (widget.isTrue!) {
            if (_model.isAnswered != null) {
              setState(() {
                _model.isAnswered = null;
              });
              setState(() {
                FFAppState().score = FFAppState().score + -100;
              });
              setState(() {
                FFAppState().completedQuestions =
                    FFAppState().completedQuestions + 1;
              });
            } else {
              setState(() {
                _model.isAnswered = true;
              });
              setState(() {
                FFAppState().completedQuestions =
                    FFAppState().completedQuestions + 1;
              });
              setState(() {
                FFAppState().score = FFAppState().score + 100;
              });
            }
          } else {
            if (_model.isAnswered != null) {
              setState(() {
                _model.isAnswered = null;
              });
              setState(() {
                FFAppState().completedQuestions =
                    FFAppState().completedQuestions + -1;
              });
            } else {
              setState(() {
                _model.isAnswered = false;
              });
              setState(() {
                FFAppState().completedQuestions =
                    FFAppState().completedQuestions + 1;
              });
            }
          }

          if (FFAppState().completedQuestions < 5) {
            context.pushNamed('ActiveMap');
          } else {
            context.pushNamed('CongratulationsPage');
          }
        },
        child: Container(
          width: double.infinity,
          height: 70.0,
          decoration: BoxDecoration(
            color: () {
              if (_model.isAnswered == true) {
                return Color(0x332510E7);
              } else if (_model.isAnswered == false) {
                return Color(0xFFF00B0B);
              } else {
                return Colors.transparent;
              }
            }(),
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(0.0, 2.0),
              )
            ],
            shape: BoxShape.rectangle,
            border: Border.all(
              color: () {
                if (_model.isAnswered == true) {
                  return Color(0x337167FF);
                } else if (_model.isAnswered == false) {
                  return Color(0xFFE16363);
                } else {
                  return Colors.white;
                }
              }(),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).black600,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      widget.questionNum!,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget.questionName!,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
