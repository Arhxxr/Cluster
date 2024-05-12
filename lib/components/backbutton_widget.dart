import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'backbutton_model.dart';
export 'backbutton_model.dart';

class BackbuttonWidget extends StatefulWidget {
  const BackbuttonWidget({super.key});

  @override
  State<BackbuttonWidget> createState() => _BackbuttonWidgetState();
}

class _BackbuttonWidgetState extends State<BackbuttonWidget> {
  late BackbuttonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackbuttonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderColor: Colors.transparent,
      borderRadius: 30.0,
      borderWidth: 1.0,
      buttonSize: 60.0,
      icon: Icon(
        Icons.arrow_back_rounded,
        color: FlutterFlowTheme.of(context).secondaryText,
        size: 30.0,
      ),
      onPressed: () async {
        context.pop();
      },
    );
  }
}
