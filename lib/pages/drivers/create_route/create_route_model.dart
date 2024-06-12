import '/flutter_flow/flutter_flow_util.dart';
import 'create_route_widget.dart' show CreateRouteWidget;
import 'package:flutter/material.dart';

class CreateRouteModel extends FlutterFlowModel<CreateRouteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
