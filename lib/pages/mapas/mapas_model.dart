import '/flutter_flow/flutter_flow_util.dart';
import 'mapas_widget.dart' show MapasWidget;
import 'package:flutter/material.dart';

class MapasModel extends FlutterFlowModel<MapasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
