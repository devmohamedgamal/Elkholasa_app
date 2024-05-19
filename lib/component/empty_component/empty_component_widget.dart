import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_component_model.dart';
export 'empty_component_model.dart';

class EmptyComponentWidget extends StatefulWidget {
  const EmptyComponentWidget({super.key});

  @override
  State<EmptyComponentWidget> createState() => _EmptyComponentWidgetState();
}

class _EmptyComponentWidgetState extends State<EmptyComponentWidget> {
  late EmptyComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyComponentModel());
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
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.hourglass_empty_outlined,
            color: FlutterFlowTheme.of(context).accent1,
            size: 100.0,
          ),
          Text(
            FFLocalizations.of(context).getText(
              'e3taf253' /* This Section is Empty for now */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                ),
          ),
        ].divide(const SizedBox(height: 30.0)),
      ),
    );
  }
}
