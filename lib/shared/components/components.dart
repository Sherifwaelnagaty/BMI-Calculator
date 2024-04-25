import 'package:flutter/material.dart';

Widget defaultButton({
  double width=double.infinity,
  Color background=Colors.blue,
  required var function,
  required String text,

}) => Container(
  width: width,
  color: background,
  child: MaterialButton(
    onPressed:
      function,
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
);
Widget defaultFormField({
  required TextEditingController Controller,
  required TextInputType type,
  var onSubmit,
  var onChange,
  required String Label,
  required var validate,
  required IconData prefix,
  var onTap,
  var suffix,
  bool isPassword=false,
  var icon,
})=>TextFormField(
  validator:
    validate,
  controller:Controller,
  keyboardType: type,
  obscureText: isPassword,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  onTap: onTap,
  decoration: InputDecoration(
    labelText: "${Label}",
    prefixIcon: Icon(
        prefix
    ),
    suffixIcon: suffix!= null? IconButton(
      onPressed: icon,
      icon: Icon(
          suffix
      ),
    ):null,
    border:OutlineInputBorder(),
  ),
);
void NavigateTo(context,widget)=>
    Navigator.push(
context,
MaterialPageRoute(
builder: (context)=>widget
),

);
void NavigateAndFinish(context,widget)=>Navigator.pushAndRemoveUntil(
context,
MaterialPageRoute(
builder: (context)=>widget,
), (Route<dynamic>route)=>true,
);
// void Toasts({
//   required ToastStates state,
//   required String msg
// })=>Fluttertoast.showToast(
//     msg: msg,
//     toastLength: Toast.LENGTH_LONG,
//     gravity: ToastGravity.BOTTOM,
//     timeInSecForIosWeb:5,
//     backgroundColor: chooseToastColor(state),
//     textColor: Colors.white,
//     fontSize: 16
// );
enum ToastStates{SUCCESS,ERROR,WARNING}
Color chooseToastColor(ToastStates state){
  switch(state){
    case ToastStates.SUCCESS:
      return Colors.green;
      break;
    case ToastStates.ERROR:
      return Colors.red;
      break;
    case ToastStates.WARNING:
      return Colors.amber;
      break;

  }
}