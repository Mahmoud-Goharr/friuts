import 'package:flutter/material.dart';
import 'package:fruitify/core/widgets/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved});
  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      onSaved: widget.onSaved,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            isPasswordVisible = !isPasswordVisible;
          });
        },
        child: isPasswordVisible
            ? Icon(Icons.remove_red_eye, color: Color(0xFFc9cecf))
            : Icon(Icons.visibility_off, color: Color(0xFFc9cecf)),
      ),
      hintText: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      obscureText: isPasswordVisible,
    );
  }
}
