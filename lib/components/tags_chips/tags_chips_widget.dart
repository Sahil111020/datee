import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tags_chips_model.dart';
export 'tags_chips_model.dart';

class TagsChipsWidget extends StatefulWidget {
  const TagsChipsWidget({super.key});

  @override
  State<TagsChipsWidget> createState() => _TagsChipsWidgetState();
}

class _TagsChipsWidgetState extends State<TagsChipsWidget> {
  late TagsChipsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagsChipsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).accent1,
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primary,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 6.0, 0.0, 6.0),
            child: Icon(
              Icons.settings_outlined,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 22.0,
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 8.0, 6.0),
              child: Text(
                'website',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
        ].divide(const SizedBox(width: 7.0)),
      ),
    );
  }
}
