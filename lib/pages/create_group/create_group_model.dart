import '/components/backbutton_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_group_widget.dart' show CreateGroupWidget;
import 'package:flutter/material.dart';

class CreateGroupModel extends FlutterFlowModel<CreateGroupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backbutton component.
  late BackbuttonModel backbuttonModel;
  // State field(s) for GroupName widget.
  FocusNode? groupNameFocusNode;
  TextEditingController? groupNameTextController;
  String? Function(BuildContext, String?)? groupNameTextControllerValidator;
  // State field(s) for GroupDescription widget.
  FocusNode? groupDescriptionFocusNode;
  TextEditingController? groupDescriptionTextController;
  String? Function(BuildContext, String?)?
      groupDescriptionTextControllerValidator;
  // State field(s) for GroupPrivacy widget.
  String? groupPrivacyValue;
  FormFieldController<String>? groupPrivacyValueController;
  // Stores action output result for [Group Chat Action] action in Button widget.
  ChatsRecord? userCreatedGroupChat;

  @override
  void initState(BuildContext context) {
    backbuttonModel = createModel(context, () => BackbuttonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backbuttonModel.dispose();
    groupNameFocusNode?.dispose();
    groupNameTextController?.dispose();

    groupDescriptionFocusNode?.dispose();
    groupDescriptionTextController?.dispose();
  }
}
