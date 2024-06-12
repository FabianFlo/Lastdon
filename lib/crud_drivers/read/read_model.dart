import '/flutter_flow/flutter_flow_util.dart';
import 'read_widget.dart' show ReadWidget;
import 'package:flutter/material.dart';

class ReadModel extends FlutterFlowModel<ReadWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
