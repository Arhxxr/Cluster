// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class Newchatpreviews extends StatefulWidget {
  const Newchatpreviews({
    super.key,
    this.width,
    this.height,
    required this.chatInfo,
  });

  final double? width;
  final double? height;
  final ChatsRecord chatInfo;

  @override
  State<Newchatpreviews> createState() => _NewchatpreviewsState();
}

class _NewchatpreviewsState extends State<Newchatpreviews> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FFChatInfo>(
      stream: FFChatManager.instance.getChatInfo(chatRecord: widget.chatInfo),
      builder: (context, snapshot) {
        final chatInfo = snapshot.data ?? FFChatInfo(widget.chatInfo);
        return FFChatPreview(
          onTap: () => context.pushNamed(
            'chatDetails',
            queryParameters: {
              'chatUser': serializeParam(
                chatInfo.otherUsers.length == 1
                    ? chatInfo.otherUsersList.first
                    : null,
                ParamType.Document,
              ),
              'chatRef': serializeParam(
                chatInfo.chatRecord.reference,
                ParamType.DocumentReference,
              ),
            }.withoutNulls,
            extra: <String, dynamic>{
              'chatUser': chatInfo.otherUsers.length == 1
                  ? chatInfo.otherUsersList.first
                  : null,
            },
          ),
          lastChatText: chatInfo.chatPreviewMessage(),
          lastChatTime: widget.chatInfo.lastMessageTime,
          seen:
              widget.chatInfo.lastMessageSeenBy!.contains(currentUserReference),
          title: chatInfo.chatPreviewTitle(),
          userProfilePic: chatInfo.chatPreviewPic(),
          color: FlutterFlowTheme.of(context).secondaryBackground,
          unreadColor: FlutterFlowTheme.of(context).primary,
          titleTextStyle: GoogleFonts.getFont(
            'Urbanist',
            color: FlutterFlowTheme.of(context).primaryText,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
          dateTextStyle: GoogleFonts.getFont(
            'Urbanist',
            color: FlutterFlowTheme.of(context).secondaryText,
            fontWeight: FontWeight.normal,
            fontSize: 14.0,
          ),
          previewTextStyle: GoogleFonts.getFont(
            'Urbanist',
            color: FlutterFlowTheme.of(context).grayIcon,
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
          contentPadding: EdgeInsetsDirectional.fromSTEB(8.0, 3.0, 8.0, 3.0),
          borderRadius: BorderRadius.circular(0.0),
        );
      },
    );
  }
}
