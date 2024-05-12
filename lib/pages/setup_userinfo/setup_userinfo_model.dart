import '/flutter_flow/chat/index.dart';
import '/flutter_flow/form_field_controller.dart';
import 'setup_userinfo_widget.dart' show SetupUserinfoWidget;
import 'package:flutter/material.dart';

class SetupUserinfoModel extends FlutterFlowModel<SetupUserinfoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;
  // State field(s) for GradYear widget.
  String? gradYearValue;
  FormFieldController<String>? gradYearValueController;
  // State field(s) for Major widget.
  String? majorValue;
  FormFieldController<String>? majorValueController;
  // Stores action output result for [Group Chat Action] action in Button widget.
  ChatsRecord? addUserToMajorGC;
  // Stores action output result for [Group Chat Action] action in Button widget.
  ChatsRecord? addUserToMainGC;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
