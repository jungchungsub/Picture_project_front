import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? fieldController;
  final String fieldTitle;
  final String? subTitle;
  final String hint;
  final int lines;

  const CustomTextField(
      {this.subTitle,
      this.fieldController,
      required this.fieldTitle,
      required this.hint,
      required this.lines,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "${fieldTitle}",
                    style: TextStyle(fontSize: 18),
                  ),
                  if (subTitle != null)
                    TextSpan(
                      text: "${subTitle}",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: fieldController,
            keyboardType: TextInputType.multiline,
            maxLines: lines,
            decoration: InputDecoration(
              hintText: "${hint}",
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              //3. 기본 textFormfield 디자인 - enabledBorder
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffDABFF5), width: 3.0),
                borderRadius: BorderRadius.circular(15),
              ),
              //마우스 올리고 난 후 스타일
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffDABFF5), width: 3.0),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
