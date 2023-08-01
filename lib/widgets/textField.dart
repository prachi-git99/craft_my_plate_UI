import '../../consts/consts.dart';

Widget customTextField({String? hint,controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextFormField(
        keyboardType: TextInputType.phone,
        maxLength: 10,
        // controller:controller ,
        decoration: InputDecoration(
          counterText: "",
            hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.grey
            ),
            hintText: hint,
            fillColor:white,
            isDense: true,
            contentPadding: EdgeInsets.all(12),
            border:OutlineInputBorder(borderSide: BorderSide(color: fontGrey)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:purple,
                )
            )
        ),
      ),
      5.heightBox
    ],
  );
}