import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'close_collection_widget.dart' show CloseCollectionWidget;
import 'package:flutter/material.dart';

class CloseCollectionModel extends FlutterFlowModel<CloseCollectionWidget> {
  ///  Local state fields for this page.

  bool btnSubmit = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for AppDate widget.
  FocusNode? appDateFocusNode;
  TextEditingController? appDateTextController;
  String? Function(BuildContext, String?)? appDateTextControllerValidator;
  // State field(s) for PigmyTotalRecipt widget.
  FocusNode? pigmyTotalReciptFocusNode;
  TextEditingController? pigmyTotalReciptTextController;
  String? Function(BuildContext, String?)?
      pigmyTotalReciptTextControllerValidator;
  // State field(s) for PigmyCollAmt widget.
  FocusNode? pigmyCollAmtFocusNode;
  TextEditingController? pigmyCollAmtTextController;
  String? Function(BuildContext, String?)? pigmyCollAmtTextControllerValidator;
  // State field(s) for LoanTotalRecipt widget.
  FocusNode? loanTotalReciptFocusNode;
  TextEditingController? loanTotalReciptTextController;
  String? Function(BuildContext, String?)?
      loanTotalReciptTextControllerValidator;
  // State field(s) for LoanCollAmt widget.
  FocusNode? loanCollAmtFocusNode;
  TextEditingController? loanCollAmtTextController;
  String? Function(BuildContext, String?)? loanCollAmtTextControllerValidator;
  // State field(s) for RDTotalRecipt widget.
  FocusNode? rDTotalReciptFocusNode;
  TextEditingController? rDTotalReciptTextController;
  String? Function(BuildContext, String?)? rDTotalReciptTextControllerValidator;
  // State field(s) for RDCollAmt widget.
  FocusNode? rDCollAmtFocusNode;
  TextEditingController? rDCollAmtTextController;
  String? Function(BuildContext, String?)? rDCollAmtTextControllerValidator;
  // Stores action output result for [Backend Call - API (CloseCollection)] action in ButtonSubmit widget.
  ApiCallResponse? closeCollSubmit;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    appDateFocusNode?.dispose();
    appDateTextController?.dispose();

    pigmyTotalReciptFocusNode?.dispose();
    pigmyTotalReciptTextController?.dispose();

    pigmyCollAmtFocusNode?.dispose();
    pigmyCollAmtTextController?.dispose();

    loanTotalReciptFocusNode?.dispose();
    loanTotalReciptTextController?.dispose();

    loanCollAmtFocusNode?.dispose();
    loanCollAmtTextController?.dispose();

    rDTotalReciptFocusNode?.dispose();
    rDTotalReciptTextController?.dispose();

    rDCollAmtFocusNode?.dispose();
    rDCollAmtTextController?.dispose();
  }
}
