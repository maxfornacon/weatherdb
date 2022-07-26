import 'package:flutter/material.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String labelText;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final String? prefixText;
  final String? suffixText;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final GestureTapCallback? onTap;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onFieldSubmitted;

  final int? maxLines;
  final int? minLines;

  const AppTextFormField({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.labelText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.prefixText,
    this.suffixText,
    this.obscureText,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.onSaved,
    this.onTap,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.minLines,
  }) : super(key: key);

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  // void _requestFocus(){
  //   setState(() {
  //     FocusScope.of(context).requestFocus(widget.focusNode);
  //   });
  // }

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      obscureText: widget.obscureText ?? false,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      onFieldSubmitted: widget.onFieldSubmitted,
      onSaved: widget.onSaved,
      // onTap: _requestFocus,
      validator: widget.validator,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        labelText: widget.labelText,
        focusColor: Theme.of(context).primaryColor,
        labelStyle: TextStyle(
          color: widget.focusNode.hasFocus ? Theme.of(context).primaryColor : null
        ),
        hintText: widget.hintText,
        helperText: widget.helperText,
        errorText: widget.errorText,
        prefixText: widget.prefixText,
        suffixText: widget.suffixText,
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}