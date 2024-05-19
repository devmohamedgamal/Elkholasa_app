import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'debartment_info_model.dart';
export 'debartment_info_model.dart';

class DebartmentInfoWidget extends StatefulWidget {
  const DebartmentInfoWidget({
    super.key,
    required this.info,
  });

  final DebartmentsRow? info;

  @override
  State<DebartmentInfoWidget> createState() => _DebartmentInfoWidgetState();
}

class _DebartmentInfoWidgetState extends State<DebartmentInfoWidget> {
  late DebartmentInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DebartmentInfoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.9,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '0cmfdx8m' /* نبذه عن القسم */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.info?.summry,
                    'non summry',
                  ),
                  textAlign: TextAlign.end,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Divider(
              thickness: 1.0,
              indent: 20.0,
              endIndent: 20.0,
              color: FlutterFlowTheme.of(context).tertiary,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  'p9cnjtf5' /* المسمايات الوظيفية */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Builder(
              builder: (context) {
                final names = widget.info?.nameOfJops.toList() ?? [];
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(names.length, (namesIndex) {
                    final namesItem = names[namesIndex];
                    return Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          namesItem,
                          'non names',
                        ),
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    );
                  }).divide(const SizedBox(height: 2.0)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
