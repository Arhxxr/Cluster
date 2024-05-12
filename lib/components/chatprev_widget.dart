import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chatprev_model.dart';
export 'chatprev_model.dart';

class ChatprevWidget extends StatefulWidget {
  const ChatprevWidget({
    super.key,
    this.parameter1,
  });

  final ChatsRecord? parameter1;

  @override
  State<ChatprevWidget> createState() => _ChatprevWidgetState();
}

class _ChatprevWidgetState extends State<ChatprevWidget> {
  late ChatprevModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatprevModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FFChatInfo>(
      stream:
          FFChatManager.instance.getChatInfo(chatRecord: widget.parameter1!),
      builder: (context, snapshot) {
        final chatInfo = snapshot.data ?? FFChatInfo(widget.parameter1!);
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
          lastChatTime: widget.parameter1!.lastMessageTime,
          seen: widget.parameter1!.lastMessageSeenBy
              .contains(currentUserReference),
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
          contentPadding: const EdgeInsetsDirectional.fromSTEB(8.0, 3.0, 8.0, 3.0),
          borderRadius: BorderRadius.circular(0.0),
        );
      },
    );
  }
}
