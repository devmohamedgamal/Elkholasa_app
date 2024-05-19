import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'gridview_i_tem_model.dart';
export 'gridview_i_tem_model.dart';

class GridviewITemWidget extends StatefulWidget {
  const GridviewITemWidget({
    super.key,
    String? name,
    required this.color,
    required this.image,
  }) : name = name ?? 'name';

  final String name;
  final String? color;
  final String? image;

  @override
  State<GridviewITemWidget> createState() => _GridviewITemWidgetState();
}

class _GridviewITemWidgetState extends State<GridviewITemWidget> {
  late GridviewITemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GridviewITemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.45,
      height: MediaQuery.sizeOf(context).height * 0.25,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(40.0),
      ),
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.4,
        height: MediaQuery.sizeOf(context).height * 0.23,
        decoration: BoxDecoration(
          color: colorFromCssString(
            widget.color!,
            defaultColor: FlutterFlowTheme.of(context).tertiary,
          ),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.name,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 26.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.network(
                  widget.image!,
                  width: 150.0,
                  height: 120.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
