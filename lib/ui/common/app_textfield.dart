// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatefulWidget {
  final String text;
  final String? hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function(String value) onChanged;
  final void Function(String)? onSubmitted;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsets? padding;
  final bool autofocus;
  final bool obscureText;
  final TextEditingController? controller;

  const AppTextField({
    super.key,
    required this.text,
    required this.onChanged,
    this.hint,
    this.padding,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.sentences,
    this.focusNode,
    this.onSubmitted,
    this.inputFormatters,
    this.autofocus = false,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.obscureText = false,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = widget.controller ?? TextEditingController();
    if (_controller.text != widget.text) {
      _controller.text = widget.text;
    }
    _controller.addListener(_changed);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_changed);
    super.dispose();
  }

  _changed() {
    widget.onChanged(_controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(0.0),
      child: TextField(
        obscureText: widget.obscureText,
        autofocus: widget.autofocus,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.black, // context.appTheme?.appTheme.textMain,
              fontWeight: FontWeight.normal,
            ),
        controller: _controller,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        textCapitalization: widget.textCapitalization,
        focusNode: widget.focusNode,
        // onChanged: widget.onChanged,
        onSubmitted: widget.onSubmitted,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
            hintText: widget.hint ?? '',
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon),
      ),
    );
  }
}
