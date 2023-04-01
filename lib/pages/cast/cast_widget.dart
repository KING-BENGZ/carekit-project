import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'cast_model.dart';
export 'cast_model.dart';

class CastWidget extends StatefulWidget {
  const CastWidget({Key? key}) : super(key: key);

  @override
  _CastWidgetState createState() => _CastWidgetState();
}

class _CastWidgetState extends State<CastWidget> with TickerProviderStateMixin {
  late CastModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'wrapOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 960.ms,
          begin: Offset(-1.0, -100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 550.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CastModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Cast'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).dark600,
        automaticallyImplyLeading: false,
        title: Text(
          'Cast Help',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Urbanist',
                color: FlutterFlowTheme.of(context).tertiary,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: [
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('CAST_PAGE_Container_soqqy9dg_ON_TAP');
                    logFirebaseEvent('Container_send_s_m_s');
                    await launchUrl(Uri(
                      scheme: 'sms',
                      path: '211',
                      queryParameters: <String, String>{
                        'body': 'Im in a casr crash . I need your help',
                      },
                    ));
                    logFirebaseEvent('Container_show_snack_bar');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'They have been contacted . Stay put ',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 160.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.carCrash,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 32.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 12.0),
                            child: Text(
                              'Car Crash',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).displaySmall,
                            ),
                          ),
                          Text(
                            'Contact',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('CAST_PAGE_Container_944as3uw_ON_TAP');
                    logFirebaseEvent('Container_send_s_m_s');
                    await launchUrl(Uri(
                      scheme: 'sms',
                      path: '211',
                      queryParameters: <String, String>{
                        'body': 'Im injured . I need your help',
                      },
                    ));
                    logFirebaseEvent('Container_show_snack_bar');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'They have been contacted . Stay put ',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 160.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.userInjured,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 32.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 12.0),
                            child: Text(
                              'Injury',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).displaySmall,
                            ),
                          ),
                          Text(
                            'Contact',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('CAST_PAGE_Container_gsrvclf7_ON_TAP');
                    logFirebaseEvent('Container_send_s_m_s');
                    await launchUrl(Uri(
                      scheme: 'sms',
                      path: '0808 611 0693',
                      queryParameters: <String, String>{
                        'body': ' I need your help. Im in trouble ',
                      },
                    ));
                    logFirebaseEvent('Container_send_s_m_s');
                    await launchUrl(Uri(
                      scheme: 'sms',
                      path: '0806 006 0157',
                      queryParameters: <String, String>{
                        'body': ' I need your help. Im in trouble ',
                      },
                    ));
                    logFirebaseEvent('Container_send_s_m_s');
                    await launchUrl(Uri(
                      scheme: 'sms',
                      path: '0808 846 8409',
                      queryParameters: <String, String>{
                        'body': ' I need your help. Im in trouble ',
                      },
                    ));
                    logFirebaseEvent('Container_show_snack_bar');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'They have been contacted . Stay put ',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 160.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_police_sharp,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 32.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 12.0),
                            child: Text(
                              'Police',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).displaySmall,
                            ),
                          ),
                          Text(
                            'Contact',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    logFirebaseEvent('CAST_PAGE_Container_dgfy9v4i_ON_TAP');
                    logFirebaseEvent('Container_send_s_m_s');
                    await launchUrl(Uri(
                      scheme: 'sms',
                      path: '0803 569 2904',
                      queryParameters: <String, String>{
                        'body': 'Im in a fire  . I need your help',
                      },
                    ));
                    logFirebaseEvent('Container_show_snack_bar');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'They have been contacted . Stay put ',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 160.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.fire,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 32.0,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 12.0),
                            child: Text(
                              'Fire',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context).displaySmall,
                            ),
                          ),
                          Text(
                            'Contact',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ).animateOnPageLoad(animationsMap['wrapOnPageLoadAnimation']!),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 50.0, 10.0, 0.0),
              child: Text(
                'Cast help is for alerting emergency services with a click of a button ',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Urbanist',
                      color: FlutterFlowTheme.of(context).textColor,
                      fontSize: 20.0,
                    ),
              ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
            ),
          ],
        ),
      ),
    );
  }
}
