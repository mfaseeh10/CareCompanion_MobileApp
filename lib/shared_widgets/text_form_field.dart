import 'package:flutter/material.dart';
import 'package:med_delivery_fyp/config/constants.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final bool enabled;
  // final Widget suffixIcon;
  // final bool suffixIconTap;
  final String error;
  final TextInputType keyboardType;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.multiline,
    required this.obscureText,
    this.enabled = true,
    //this.suffixIcon = Icon(Icons.ac_unit) ,
    // this.suffixIconTap,
    this.error = '',
  }) : super(key: key);

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool? _obscureText;
  @override
  void initState() {
    _obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        primaryColor: kPrimaryColor,
      ),
      child: TextFormField(
        keyboardType: widget.keyboardType,
        obscureText: _obscureText ?? false,
        controller: widget.controller,
        enabled: widget.enabled,
        decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontSize: 16,
              color: Color(0xffbcbcbc),
              fontFamily: 'Muli',
            ),
            //errorText: widget.error,
            suffixIcon: (widget.obscureText != null && widget.obscureText)
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText!;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        _obscureText! ? Icons.visibility : Icons.visibility_off,
                        size: 15,
                      ),
                    ),
                  )
                : Icon(Icons.ac_unit)
            // enabledBorder: UnderlineInputBorder(
            //   borderSide: BorderSide(color: Color(0xffbcbcbc)),
            // ),
            // focusedBorder: UnderlineInputBorder(
            //   borderSide: BorderSide(color: Colors.pink),
            // ),
            ),
        style: TextStyle(
          fontSize: 16,
          color: Color(0xff575757),
          fontFamily: 'Muli',
        ),
        cursorColor: kPrimaryColor,
        cursorWidth: 1,
      ),
    );
  }
}
