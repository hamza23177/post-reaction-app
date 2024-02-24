// ----- STRINGS -----
import 'package:flutter/material.dart';

const baseURL = 'http://192.168.43.231:8000/api';
const loginURL = baseURL + '/login';
const registerURL = baseURL + '/register';
const logoutURL = baseURL + '/logout';
const userURL = baseURL + '/user';
const postsURL = baseURL + '/posts';
const commentsURL = baseURL + '/comments';

// ---- ERRORS -----
const serverError = 'Server Error';
const unauthorized = 'Unauthorized';
const somethingWentWrong = 'something went wrong, try again';

// --- input decoration
InputDecoration kInputDecoration(String label){
 return InputDecoration(
      labelText: label,
      hintTextDirection: TextDirection.rtl,
      contentPadding: EdgeInsets.all(10),
      border: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.black))
  );
}

// --- Text BUTTON ___
TextButton kTextButton(String label , Function onPressed){
 return TextButton(
  onPressed: () => onPressed(),
  child: Text(
   label,
   style: TextStyle(color: Colors.white),
  ),
  style: ButtonStyle(
   backgroundColor:
   MaterialStateColor.resolveWith((states) => Colors.blue),
   padding: MaterialStateProperty.resolveWith(
           (states) => EdgeInsets.symmetric(vertical: 10)),
  ),
 );
}

// Login Register Hint
Row kLoginRegisterHint(String text,String label,Function onTap){
 return Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
   Text(text),
   GestureDetector(
    child: Text(label,style: TextStyle(color: Colors.blue),),
    onTap: () => onTap(),
   ),
  ],
 );
}

// likes and comment btn

Expanded kLikeAndComment (int value, IconData icon, Color color, Function onTap) {
 return Expanded(
  child: Material(
   child: InkWell(
    onTap: () => onTap(),
    child: Padding(
     padding: EdgeInsets.symmetric(vertical:10),
     child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Icon(icon, size: 16, color: color,),
       SizedBox(width:4),
       Text('$value')
      ],
     ),
    ),
   ),
  ),
 );
}