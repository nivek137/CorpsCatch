import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'congratulations_page_model.dart';
export 'congratulations_page_model.dart';

class CongratulationsPageWidget extends StatefulWidget {
  const CongratulationsPageWidget({Key? key}) : super(key: key);

  @override
  _CongratulationsPageWidgetState createState() =>
      _CongratulationsPageWidgetState();
}

class _CongratulationsPageWidgetState extends State<CongratulationsPageWidget> {
  late CongratulationsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CongratulationsPageModel());
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
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (FFAppState().score == 500)
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 300.0, 0.0, 0.0),
                      child: Text(
                        'You\'ve earned the Corps Coin\nfor this trail. Visit the Collections tab to \nview your coin !',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              fontStyle: FontStyle.italic,
                            ),
                      ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Congratulations!',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 26.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'You got ${FFAppState().score.toString()} Points ! ',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final usersUpdateData1 = {
                        'experience_points':
                            FieldValue.increment(FFAppState().score),
                      };
                      await currentUserReference!.update(usersUpdateData1);
                      if (valueOrDefault(
                              currentUserDocument?.experiencePoints, 0) >=
                          2000) {
                        final usersUpdateData2 = createUsersRecordData(
                          coin4: true,
                        );
                        await currentUserReference!.update(usersUpdateData2);
                      } else {
                        if (valueOrDefault(
                                currentUserDocument?.experiencePoints, 0) >=
                            1500) {
                          final usersUpdateData3 = createUsersRecordData(
                            coin3: true,
                          );
                          await currentUserReference!.update(usersUpdateData3);
                        } else {
                          if (valueOrDefault(
                                  currentUserDocument?.experiencePoints, 0) >=
                              1000) {
                            final usersUpdateData4 = createUsersRecordData(
                              coin2: true,
                            );
                            await currentUserReference!
                                .update(usersUpdateData4);
                          } else {
                            if (valueOrDefault(
                                    currentUserDocument?.experiencePoints, 0) >=
                                500) {
                              final usersUpdateData5 = createUsersRecordData(
                                coin1: true,
                              );
                              await currentUserReference!
                                  .update(usersUpdateData5);
                            }
                          }
                        }
                      }

                      context.pushNamed('Maps');
                    },
                    text: 'Home',
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
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
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
