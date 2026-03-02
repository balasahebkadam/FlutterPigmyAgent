import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  int? loginCount = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  String? Function(BuildContext, String?)? dateTextControllerValidator;
  // State field(s) for Pin widget.
  FocusNode? pinFocusNode;
  TextEditingController? pinTextController;
  late bool pinVisibility;
  String? Function(BuildContext, String?)? pinTextControllerValidator;
  String? _pinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'a856iftr' /* Pin is required */,
      );
    }

    if (val.length < 4) {
      return FFLocalizations.of(context).getText(
        'lo5u2ngl' /* Enter 4 digit PIN */,
      );
    }
    if (val.length > 4) {
      return FFLocalizations.of(context).getText(
        '9177i3q1' /* Enter 4 digit PIN */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (ValidatePin)] action in Button widget.
  ApiCallResponse? validatePin;
  // Stores action output result for [Backend Call - API (AppBlock)] action in Button widget.
  ApiCallResponse? appBlockResponse;

  @override
  void initState(BuildContext context) {
    pinVisibility = false;
    pinTextControllerValidator = _pinTextControllerValidator;
  }

  @override
  void dispose() {
    dateFocusNode?.dispose();
    dateTextController?.dispose();

    pinFocusNode?.dispose();
    pinTextController?.dispose();
  }
}
