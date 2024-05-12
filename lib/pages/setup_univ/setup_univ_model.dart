import '/flutter_flow/flutter_flow_util.dart';
import 'setup_univ_widget.dart' show SetupUnivWidget;
import 'package:flutter/material.dart';

class SetupUnivModel extends FlutterFlowModel<SetupUnivWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for randomcode widget.
  FocusNode? randomcodeFocusNode;
  TextEditingController? randomcodeTextController;
  String? Function(BuildContext, String?)? randomcodeTextControllerValidator;
  // State field(s) for randomcodestr widget.
  FocusNode? randomcodestrFocusNode;
  TextEditingController? randomcodestrTextController;
  String? Function(BuildContext, String?)? randomcodestrTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    randomcodeFocusNode?.dispose();
    randomcodeTextController?.dispose();

    randomcodestrFocusNode?.dispose();
    randomcodestrTextController?.dispose();
  }
}
