import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'web_view_f_mc_model.dart';
export 'web_view_f_mc_model.dart';

class WebViewFMcWidget extends StatefulWidget {
  const WebViewFMcWidget({super.key});

  static String routeName = 'WebViewFMc';
  static String routePath = '/webViewFMc';

  @override
  State<WebViewFMcWidget> createState() => _WebViewFMcWidgetState();
}

class _WebViewFMcWidgetState extends State<WebViewFMcWidget> {
  late WebViewFMcModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebViewFMcModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                child: custom_widgets.CustomFMCWebView(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  initialUrl: 'http://${FFAppState().pcIP}:9090',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
