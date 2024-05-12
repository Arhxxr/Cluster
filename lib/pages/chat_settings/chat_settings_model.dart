import '/components/backbutton_widget.dart';
import '/flutter_flow/chat/index.dart';
import 'chat_settings_widget.dart' show ChatSettingsWidget;
import 'package:flutter/material.dart';

class ChatSettingsModel extends FlutterFlowModel<ChatSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for backbutton component.
  late BackbuttonModel backbuttonModel;
  // Stores action output result for [Group Chat Action] action in Allow widget.
  ChatsRecord? groupChat;
  // Stores action output result for [Group Chat Action] action in Button widget.
  ChatsRecord? groupChatRemoveUser;

  @override
  void initState(BuildContext context) {
    backbuttonModel = createModel(context, () => BackbuttonModel());
  }

  @override
  void dispose() {
    backbuttonModel.dispose();
  }
}
