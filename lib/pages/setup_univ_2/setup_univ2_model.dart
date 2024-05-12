import '/flutter_flow/flutter_flow_util.dart';
import 'setup_univ2_widget.dart' show SetupUniv2Widget;
import 'package:flutter/material.dart';

class SetupUniv2Model extends FlutterFlowModel<SetupUniv2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for codeinput widget.
  FocusNode? codeinputFocusNode;
  TextEditingController? codeinputTextController;
  String? Function(BuildContext, String?)? codeinputTextControllerValidator;
  // State field(s) for randomcodedisp widget.
  FocusNode? randomcodedispFocusNode;
  TextEditingController? randomcodedispTextController;
  String? Function(BuildContext, String?)?
      randomcodedispTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    codeinputFocusNode?.dispose();
    codeinputTextController?.dispose();

    randomcodedispFocusNode?.dispose();
    randomcodedispTextController?.dispose();
  }
}
