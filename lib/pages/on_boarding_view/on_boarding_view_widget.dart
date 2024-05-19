import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'on_boarding_view_model.dart';
export 'on_boarding_view_model.dart';

class OnBoardingViewWidget extends StatefulWidget {
  const OnBoardingViewWidget({super.key});

  @override
  State<OnBoardingViewWidget> createState() => _OnBoardingViewWidgetState();
}

class _OnBoardingViewWidgetState extends State<OnBoardingViewWidget> {
  late OnBoardingViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnBoardingViewModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF705BFE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SvgPicture.asset(
                  'assets/images/undraw_education_f8ru.svg',
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.4,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'wf2fskfa' /* Let's start  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: 'Marhey',
                                    fontSize: () {
                                      if ((MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) ||
                                          (MediaQuery.sizeOf(context).height <
                                              kBreakpointSmall)) {
                                        return 32.0;
                                      } else if ((MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) ||
                                          (MediaQuery.sizeOf(context).height <
                                              kBreakpointMedium)) {
                                        return 28.0;
                                      } else if ((MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) &&
                                          (MediaQuery.sizeOf(context).height <
                                              kBreakpointLarge)) {
                                        return 20.0;
                                      } else {
                                        return 16.0;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'bqr9s7kr' /* Growing
 */
                                ,
                              ),
                              style: TextStyle(
                                color: const Color(0xFF705BFE),
                                fontSize: () {
                                  if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) ||
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointSmall)) {
                                    return 32.0;
                                  } else if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointMedium) ||
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointMedium)) {
                                    return 28.0;
                                  } else if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointLarge) &&
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointLarge)) {
                                    return 20.0;
                                  } else {
                                    return 16.0;
                                  }
                                }(),
                              ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'zb403vsi' /* your  */,
                              ),
                              style: TextStyle(
                                fontSize: () {
                                  if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) ||
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointSmall)) {
                                    return 32.0;
                                  } else if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointMedium) ||
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointMedium)) {
                                    return 28.0;
                                  } else if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointLarge) &&
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointLarge)) {
                                    return 20.0;
                                  } else {
                                    return 16.0;
                                  }
                                }(),
                              ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                '85ts99n1' /* Study */,
                              ),
                              style: TextStyle(
                                color: const Color(0xFF705BFE),
                                fontSize: () {
                                  if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) ||
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointSmall)) {
                                    return 32.0;
                                  } else if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointMedium) ||
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointMedium)) {
                                    return 28.0;
                                  } else if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointLarge) &&
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointLarge)) {
                                    return 20.0;
                                  } else {
                                    return 16.0;
                                  }
                                }(),
                                fontStyle: FontStyle.normal,
                              ),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Marhey',
                                fontSize: () {
                                  if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) ||
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointSmall)) {
                                    return 20.0;
                                  } else if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointMedium) ||
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointMedium)) {
                                    return 28.0;
                                  } else if ((MediaQuery.sizeOf(context).width <
                                          kBreakpointLarge) &&
                                      (MediaQuery.sizeOf(context).height <
                                          kBreakpointLarge)) {
                                    return 32.0;
                                  } else {
                                    return 16.0;
                                  }
                                }(),
                                letterSpacing: 0.0,
                              ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'uj8jv38l' /* The complete app to start lear... */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: const Color(0xFFAEB0B6),
                                fontSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 16.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 10.0;
                                  } else {
                                    return 14.0;
                                  }
                                }(),
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.leaderboard_sharp,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 30.0,
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                if ((FFAppState().debartment == '') ||
                                    (FFAppState().University == '') ||
                                    (FFAppState().level == '') ||
                                    (FFAppState().semester == '')) {
                                  context.pushNamed('chooseYourRoles');
                                } else {
                                  context.pushNamed('homeView');
                                }
                              },
                              text: FFLocalizations.of(context).getText(
                                '0pvmqn7y' /* Get started */,
                              ),
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.6,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.07,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: const Color(0xFF705BFE),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      fontSize: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 14.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 16.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 20.0;
                                        } else {
                                          return 14.0;
                                        }
                                      }(),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ],
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
  }
}
