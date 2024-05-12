import '/flutter_flow/chat/index.dart';
import 'browse_groups_widget.dart' show BrowseGroupsWidget;
import 'package:flutter/material.dart';

class BrowseGroupsModel extends FlutterFlowModel<BrowseGroupsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Group Chat Action] action in Container widget.
  ChatsRecord? userJoinGroupChat;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
