// ----- STRINGS ------
import 'package:flutter/material.dart';

const baseURL = 'https://www.daleldouma.com/api';
const loginURL = baseURL + '/login';
const registerURL = baseURL + '/register';
const logoutURL = baseURL + '/logout';
const userURL = baseURL + '/user';
const postsURL = baseURL + '/posts';
const commentsURL = baseURL + '/comments';
const postsMazadURL = baseURL + '/postsMazad';
const commentsMazadURL = baseURL + '/commentsMazad';
const contactMe = baseURL + '/contact';


// ----- Errors -----
const serverError = 'Server error';
const unauthorized = 'Unauthorized';
const somethingWentWrong = 'Something went wrong, try again!';


// --- input decoration
InputDecoration kInputDecoration(String label) {
 return InputDecoration(
     labelText: label,
     contentPadding: EdgeInsets.all(10),
     border: OutlineInputBorder(borderSide: BorderSide(width: 1, color: Colors.black))
 );
}


// button

TextButton kTextButton(String label, Function onPressed){
 return TextButton(
  child: Text(label, style: TextStyle(color: Colors.white),),
  style: ButtonStyle(
      backgroundColor: MaterialStateColor.resolveWith((states) => Color(0xffF57752)),
      padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(vertical: 10),),
  ),
  onPressed: () => onPressed(),
 );
}

// loginRegisterHint
Row kLoginRegisterHint(String text, String label, Function onTap) {
 return Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
   Text(text),
   GestureDetector(
       child: Text(label, style:TextStyle(color: Color(0xffF57752))),
       onTap: () => onTap()
   )
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

void showFullImage(BuildContext context, String imageUrl) {
 showDialog(
  context: context,
  builder: (BuildContext context) {
   return Dialog(
    backgroundColor: Colors.transparent,
    insetPadding: EdgeInsets.all(10),
    child: Container(
     width: double.infinity,
     height: double.infinity,
     decoration: BoxDecoration(
      image: DecorationImage(
       image: NetworkImage(imageUrl),
       fit: BoxFit.contain,
      ),
     ),
     child: InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
       alignment: Alignment.topRight,
       padding: EdgeInsets.all(10),
       child: Icon(
        Icons.close,
        color: Colors.white,
        size: 25,
       ),
      ),
     ),
    ),
   );
  },
 );
}

const b1 = "assets/programming.jpeg";
const b2 = "assets/graphicDesigne.jpg";
const b3 = "assets/video.jpg";
const b4 = "assets/ican2.png";
const b5 = "assets/digital.jpg";
const b6 = "assets/Ads.jpg";
