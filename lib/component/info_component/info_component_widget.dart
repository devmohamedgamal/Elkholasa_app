import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'info_component_model.dart';
export 'info_component_model.dart';

class InfoComponentWidget extends StatefulWidget {
  const InfoComponentWidget({super.key});

  @override
  State<InfoComponentWidget> createState() => _InfoComponentWidgetState();
}

class _InfoComponentWidgetState extends State<InfoComponentWidget> {
  late InfoComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(
                Icons.vertical_align_bottom,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'gn89bng1' /* Version */,
                ),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Marhey',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                FFLocalizations.of(context).getText(
                  'ztdlac6h' /* 1.0.0 */,
                ),
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
            ListTile(
              leading: const Icon(
                Icons.person,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '69ybk37s' /* developer */,
                ),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Marhey',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                FFLocalizations.of(context).getText(
                  'fc6vyok2' /* Mohamed Gamal */,
                ),
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await launchURL('https://www.facebook.com/MaYNoS2');
              },
              child: ListTile(
                leading: const Icon(
                  Icons.facebook,
                  color: Color(0xFF0609D6),
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'wtwi6d00' /*  facebook */,
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Marhey',
                        letterSpacing: 0.0,
                      ),
                ),
                subtitle: Text(
                  FFLocalizations.of(context).getText(
                    'ga6qy4xg' /* Maynos2 */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                dense: false,
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await launchURL('https://wa.me/+201019876085');
              },
              child: ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Color(0xFF0DEA30),
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'p93neda7' /* whatsApp */,
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Marhey',
                        letterSpacing: 0.0,
                      ),
                ),
                subtitle: Text(
                  FFLocalizations.of(context).getText(
                    'paf2ytlm' /* +201019876085 */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                dense: false,
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await launchURL(
                    'https://www.linkedin.com/in/mohamed-sabry-65250a179?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app');
              },
              child: ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Color(0xFF0D71EA),
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'z16dyftw' /* Linkedin */,
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Marhey',
                        letterSpacing: 0.0,
                      ),
                ),
                subtitle: Text(
                  FFLocalizations.of(context).getText(
                    'pe83f2la' /* Mohamed Gamal Sabri */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                dense: false,
              ),
            ),
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await launchURL('https://github.com/devmohamedgamal');
              },
              child: ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.black,
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'ygyyfk8f' /* Github */,
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Marhey',
                        letterSpacing: 0.0,
                      ),
                ),
                subtitle: Text(
                  FFLocalizations.of(context).getText(
                    'nu0eqgcb' /* devmogamal */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                dense: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
