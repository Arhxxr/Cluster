import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'nousers_model.dart';
export 'nousers_model.dart';

class NousersWidget extends StatefulWidget {
  const NousersWidget({super.key});

  @override
  State<NousersWidget> createState() => _NousersWidgetState();
}

class _NousersWidgetState extends State<NousersWidget> {
  late NousersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NousersModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'No users requesting to join.',
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Urbanist',
            letterSpacing: 0.0,
          ),
    );
  }
}
