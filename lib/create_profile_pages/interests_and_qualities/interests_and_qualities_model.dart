import '/flutter_flow/flutter_flow_util.dart';
import 'interests_and_qualities_widget.dart' show InterestsAndQualitiesWidget;
import 'package:flutter/material.dart';

class InterestsAndQualitiesModel
    extends FlutterFlowModel<InterestsAndQualitiesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
